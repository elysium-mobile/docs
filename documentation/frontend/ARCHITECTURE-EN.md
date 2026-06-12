# SoftWork — Android Architecture Guide

This document outlines the architectural patterns and directory structure used in the SoftWork Employee Client. The project follows **Domain-Driven Design (DDD)** principles and a **Hexagonal Architecture** (Ports & Adapters) flavor adapted for modern Android development.

---

## High-Level Architectural Goals

1.  **Separation of Concerns**: Business logic (Domain and Application Use Cases) is decoupled from UI (Presentation) and Infrastructure (Data).
2.  **Modularity**: Features are isolated into Bounded Contexts to minimize side effects.
3.  **Testability**: The Domain and Application layers contain pure Kotlin code, making them easily testable with JVM unit tests.
4.  **Consistency**: A predictable 4-layer structure applied to every feature.

---

## Project Structure: Package-by-Feature

We use a **Bounded Context** approach. Instead of grouping all ViewModels together or all Use Cases together, we group by business capability under `com.elysium.softwork`.

### Bounded Contexts
- `iam`: Identity & Access Management (Login, Register, Session).
- `worker.forum`: Internal community feed, posts, and comments.
- `feedback`: Employee check-ins, surveys, and HR reporting.
- `payment.membership`: Subscription management and payment processing.
- `shared`: Cross-cutting concerns (Theme, Core UI, Networking infra, Utils).

---

##  The Four-Layer Model

Each bounded context is strictly divided into four layers:

### 1. Domain Layer (`domain/`)
The "Heart" of the software. It contains pure business rules and entities.
- **Models**: Plain Kotlin data classes (e.g., `Post`, `User`). 
- **Domain Purity**: **Zero external framework dependencies.** Absolutely no Retrofit, Room, Compose, or serialization annotations (`@SerializedName`, `@Entity`). Property names match backend keys exactly to leverage Gson's native reflection. When alternative key mapping is required, a dedicated DTO is placed in `data/network/dto/`.
- **Store Interfaces**: These act as **Ports** in Hexagonal Architecture. They define *what* data operations are needed without knowing *how* they are implemented.

### 2. Data Layer (`data/`)
The Infrastructure or **Adapters**.
- **Store Implementations** (`data/store/`): Implements the Domain interfaces (e.g., `PostStoreImpl`).
- **DTOs** (`data/network/dto/`): Data Transfer Objects used to map unstable network contracts downstream, keeping the domain clean and stable.
- **WebServices** (`data/network/`): Retrofit interfaces for API communication.
- **DAOs** (`data/local/`): Room interfaces for local persistence.
- **Logic**: Orchestrates between Network and Local Cache (Offline-first strategy).

### 3. Application Layer (`application/`)
The Orchestration layer.
- **Use Cases / Interactors** (`application/usecase/`): Contains lightweight, high-performance execution blocks for core business operations (e.g., `LoginUseCase.kt`, `GetNotificationsUseCase.kt`). Extracts business orchestration out of the ViewModels.
- **Validation**: Pure logic for form validation (e.g., `AuthValidation`).

### 4. Presentation Layer (`presentation/`)
The visual representation and UI state management.
- **ViewModels** (`presentation/viewmodel/`): Holds UI state via read-only `StateFlow` and handles user intent. They strictly delegate business logic execution to the Application Use Cases.
- **Factories** (`presentation/factory/`): `ViewModelProvider.Factory` implementations for manual DI via the Service Locator.
- **Views/Screens** (`presentation/views/`): Jetpack Compose functions defining the layout.
- **Components** (`presentation/components/`): Feature-specific UI widgets.
- **Navigation** (`presentation/navigation/`): Route definitions and NavGraph builders targeted to the presentation-localized ViewModels.

---

## Key Patterns

### The Store Pattern
We use the term **Store** instead of Repository to align with frontend naming conventions and avoid the `RepositoryImpl` verbosity.
- The `interface` lives in **Domain**.
- The `implementation` lives in **Data**.

### Manual Dependency Injection (Service Locator)
We do **not** use Hilt or Dagger.
- `SoftWorkApplication` owns a `ServiceLocator`.
- The `ServiceLocator` instantiates singletons (Retrofit, Database, Use Cases, Stores).
- ViewModels receive their required Use Cases via their `Factory` from the `ServiceLocator`.

---

## Example: Worker Forum Context

Here is how the **Forum** Bounded Context is mapped across the architecture:

```text
worker/forum/
├── domain/
│   ├── model/Post.kt              <-- Pure Business Entity (No Annotations)
│   └── store/PostStore.kt         <-- PORT (Interface)
├── data/
│   ├── network/
│   │   ├── dto/PostDto.kt         <-- Network DTO (If mapping needed)
│   │   └── PostWebService.kt      <-- Network Client
│   ├── local/PostDao.kt           <-- Local Cache
│   └── store/PostStoreImpl.kt     <-- ADAPTER (Logic)
├── application/
│   └── usecase/
│       ├── GetForumFeedUseCase.kt <-- Core Business Logic
│       └── PublishPostUseCase.kt
└── presentation/
    ├── viewmodel/
    │   ├── ForumViewModel.kt      <-- UI State (StateFlow)
    │   └── NewPostViewModel.kt
    ├── navigation/                <-- Routes: "forum/feed"
    ├── views/
    │   ├── feed/ForumScreen.kt    <-- Main UI
    │   └── thread/ThreadScreen.kt
    └── components/
        └── PostCard.kt            <-- UI Widget
```

---

## Shared Layer (`shared/`)

The `shared` bounded context handles code used by multiple contexts:
- `presentation/theme/`: Brand colors, typography (Exo), and shapes.
- `presentation/components/`: Reusable brand widgets (`SoftWorkButton`, `SoftWorkTextField`).
- `data/network/`: `ApiClient` (Retrofit configuration) and Interceptors.
- `utils/`:
    - `values/`: Enums that carry data (Keys/Labels).
    - `discriminators/`: Pure sum types for `when` branches.
    - `constants/`: Global literals (Regexes, Domains).

---

## Data Flow Summary

1. **User Action**: Clicks "Publish" in `NewPostScreen`.
2. **Event**: `NewPostViewModel.publish()` is called.
3. **Domain Call**: ViewModel calls `postStore.publish(content)`.
4. **Adapter Logic**: `PostStoreImpl` calls `PostWebService` (Network).
5. **Persistence**: On success, `PostStoreImpl` upserts the result into `PostDao` (Local).
6. **Reactivity**: The UI observes a Flow originating from PostDao exposed through the ViewModel's read-only StateFlow, so the new post appears automatically.
