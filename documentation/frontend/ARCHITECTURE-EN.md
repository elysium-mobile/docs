# SoftWork — Android Architecture Guide

This document outlines the architectural patterns and directory structure used in the SoftWork Employee Client. The project follows **Domain-Driven Design (DDD)** principles and a **Hexagonal Architecture** (Ports & Adapters) flavor adapted for modern Android development.

---

## High-Level Architectural Goals

1.  **Separation of Concerns**: Business logic (Domain) is decoupled from UI (Presentation) and Infrastructure (Data).
2.  **Modularity**: Features are isolated into Bounded Contexts to minimize side effects.
3.  **Testability**: The Domain layer contains pure Kotlin code, making it easily testable with JVM unit tests.
4.  **Consistency**: A predictable 4-layer structure applied to every feature.

---

## Project Structure: Package-by-Feature

We use a **Bounded Context** approach. Instead of grouping all ViewModels together or all Fragments together, we group by business capability under `com.elysium.softwork`.

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
The "Heart" of the software. It contains the business rules and entities.
- **Models**: Plain Kotlin data classes (e.g., `Post`, `User`).
- **Store Interfaces**: These act as **Ports** in Hexagonal Architecture. They define *what* data operations are needed without knowing *how* they are implemented.
- **Rules**: **Zero Android dependencies.** No Retrofit, No Room, No Compose.

### 2. Data Layer (`data/store/`)
The Infrastructure or **Adapters**.
- **Store Implementations**: Implements the Domain interfaces (e.g., `PostStoreImpl`).
- **WebServices**: Retrofit interfaces for API communication.
- **DAOs**: Room interfaces for local persistence.
- **Logic**: Orchestrates between Network and Local Cache (Offline-first strategy).

### 3. Application Layer (`application/`)
The Orchestration layer.
- **ViewModels**: Holds the UI state and handles user intent. It talks to the `Store`.
- **Validation**: Pure logic for form validation (e.g., `AuthValidation`).
- **Factories**: `ViewModelProvider.Factory` implementations for manual DI.

### 4. Presentation Layer (`presentation/`)
The visual representation.
- **Views/Screens**: Jetpack Compose functions defining the layout.
- **Components**: Feature-specific UI widgets.
- **Navigation**: Route definitions and NavGraph builders.

---

## Key Patterns

### The Store Pattern
We use the term **Store** instead of Repository to align with frontend naming conventions and avoid the `RepositoryImpl` verbosity.
- The `interface` lives in **Domain**.
- The `implementation` lives in **Data**.

### Manual Dependency Injection (Service Locator)
We do **not** use Hilt or Dagger.
- `SoftWorkApplication` owns a `ServiceLocator`.
- The `ServiceLocator` instantiates singletons (Retrofit, Database, Stores).
- ViewModels receive dependencies via their `Factory` from the `ServiceLocator`.

### Bean / Pragmatic Shortcut
For simplicity, we often use a single Kotlin data class for both the Domain Model and the Network/Database DTO.
- Data classes are annotated with `@SerializedName` (Gson) and `@Entity` (Room) where appropriate.
- This avoids boilerplate mappers but requires all fields to be nullable/defaulted if the wire contract is unstable.

---

## Example: Worker Forum Context

Here is how the **Forum** Bounded Context is mapped across the architecture:

```text
worker/forum/
├── domain/
│   ├── model/Post.kt             <-- Business Entity
│   └── store/PostStore.kt        <-- PORT (Interface)
├── data/
│   ├── network/PostWebService.kt <-- Network Client
│   ├── local/PostDao.kt          <-- Local Cache
│   └── store/PostStoreImpl.kt    <-- ADAPTER (Logic)
├── application/
│   └── viewmodel/
│       ├── ForumViewModel.kt     <-- UI State Management
│       └── NewPostViewModel.kt
└── presentation/
    ├── navigation/               <-- Routes: "forum/feed"
    ├── views/
    │   ├── feed/ForumScreen.kt   <-- Main UI
    │   └── thread/ThreadScreen.kt
    └── components/
        └── PostCard.kt           <-- UI Widget
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
6. **Reactivity**: The UI is observing a `Flow` from `PostDao`, so the new post appears automatically.
