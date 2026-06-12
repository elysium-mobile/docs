# SoftWork — Guía de Arquitectura Android

Este documento describe los patrones arquitectónicos y la estructura de directorios utilizada en el Cliente para Empleados de SoftWork. El proyecto sigue los principios de **Domain-Driven Design (DDD)** y una variante de **Arquitectura Hexagonal** (Puertos y Adaptadores) adaptada para el desarrollo moderno en Android.

---

## Objetivos Arquitectónicos de Alto Nivel

1.  **Separación de Responsabilidades**: La lógica de negocio (Dominio y Casos de Uso de Aplicación) está desacoplada de la interfaz de usuario (Presentación) y de la infraestructura (Datos).
2.  **Modularidad**: Las funcionalidades están aisladas en **Bounded Contexts** (Contextos Delimitados) para minimizar los efectos secundarios.
3.  **Capacidad de Pruebas**: Las capas de Dominio y Aplicación contienen código Kotlin puro, lo que facilita las pruebas unitarias en la JVM.
4.  **Consistencia**: Se aplica una estructura predecible de 4 capas a cada funcionalidad.

---

## Estructura del Proyecto: Paquete por Funcionalidad

Utilizamos un enfoque de **Bounded Context**. En lugar de agrupar todos los ViewModels o todos los Casos de Uso juntos, agrupamos por capacidad de negocio bajo `com.elysium.softwork`.

### Bounded Contexts
- `iam`: Gestión de Identidad y Acceso (Login, Registro, Sesión).
- `worker.forum`: Foro comunitario interno, publicaciones y comentarios.
- `feedback`: Check-ins de empleados, encuestas y reportes a RR.HH.
- `payment.membership`: Gestión de suscripciones y procesamiento de pagos.
- `shared`: Aspectos transversales (Tema, UI Base, infraestructura de Red, Utilidades).

---

## El Modelo de Cuatro Capas

Cada contexto delimitado se divide estrictamente en cuatro capas:

### 1. Capa de Dominio (`domain/`)
El "corazón" del software. Contiene las reglas de negocio y las entidades puras.
- **Modelos**: Clases de datos (data classes) de Kotlin puro (ej. `Post`, `User`).
- **Pureza del Dominio**: **Cero dependencias de frameworks externos.** No se permite Retrofit, Room, Compose ni anotaciones de serialización (`@SerializedName`, `@Entity`). Los nombres de las propiedades coinciden exactamente con las llaves del backend para aprovechar la reflexión nativa de Gson. Si se requiere un mapeo alternativo, se implementa un DTO dedicado en `data/network/dto/`.
- **Interfaces Store**: Actúan como los **Puertos** en la Arquitectura Hexagonal. Definen *qué* operaciones de datos se necesitan sin saber *cómo* están implementadas.

### 2. Capa de Datos (`data/`)
La infraestructura o los **Adaptadores**.
- **Implementaciones de Store** (`data/store/`): Implementan las interfaces del Dominio (ej. `PostStoreImpl`).
- **DTOs** (`data/network/dto/`): Objetos de Transferencia de Datos utilizados para aislar contratos de red inestables sin afectar las entidades de dominio.
- **WebServices** (`data/network/`): Interfaces de Retrofit para la comunicación con la API.
- **DAOs** (`data/local/`): Interfaces de Room para la persistencia local.
- **Lógica**: Orquesta entre la Red y el Caché Local (estrategia Offline-first).

### 3. Capa de Aplicación (`application/`)
La capa de orquestación.
- **Casos de Uso / Interactors** (`application/usecase/`): Contiene bloques de ejecución ligeros y de alto rendimiento para las operaciones centrales de negocio (ej. `LoginUseCase.kt`, `GetNotificationsUseCase.kt`). Extrae la orquestación de negocio fuera de los ViewModels.
- **Validación**: Lógica pura para validación de formularios (ej. `AuthValidation`).

### 4. Capa de Presentación (`presentation/`)
La representación visual y gestión del estado de la UI.
- **ViewModels** (`presentation/viewmodel/`): Mantienen el estado de la UI a través de `StateFlow` de solo lectura y manejan la intención del usuario. Delegan estrictamente la ejecución de la lógica de negocio a los Casos de Uso de la capa de Aplicación.
- **Factories** (`presentation/factory/`): Implementaciones de `ViewModelProvider.Factory` para la Inyección de Dependencias (DI) manual mediante el Service Locator.
- **Views/Screens** (`presentation/views/`): Funciones de Jetpack Compose que definen el diseño.
- **Components** (`presentation/components/`): Widgets de UI específicos de la funcionalidad.
- **Navigation** (`presentation/navigation/`): Definiciones de rutas y constructores de NavGraph vinculados a las nuevas ubicaciones de los ViewModels.

---

## Patrones Clave

### El Patrón Store
Utilizamos el término **Store** en lugar de Repository para alinearnos con las convenciones de nombres de frontend y evitar la verbosidad de sufijos como `RepositoryImpl`.
- La `interface` vive en el **Dominio**.
- La `implementation` vive en los **Datos**.

### Inyección de Dependencias Manual (Service Locator)
**No** utilizamos Hilt ni Dagger.
- `SoftWorkApplication` posee un `ServiceLocator`.
- El `ServiceLocator` instancia singletons (Retrofit, Base de Datos, Casos de Uso, Stores).
- Los ViewModels reciben sus Casos de Uso requeridos a través de su `Factory` desde el `ServiceLocator`.

---

## Ejemplo: Contexto del Foro (Worker Forum)

Así es como se mapea el bounded context del **Foro** a través de la arquitectura:

```text
worker/forum/
├── domain/
│   ├── model/Post.kt              <-- Entidad de Negocio Pura (Sin Anotaciones)
│   └── store/PostStore.kt         <-- Interfaz (PUERTO)
├── data/
│   ├── network/
│   │   ├── dto/PostDto.kt         <-- DTO de Red (Si requiere mapeo)
│   │   └── PostWebService.kt      <-- Cliente de Red
│   ├── local/PostDao.kt           <-- Caché Local
│   └── store/PostStoreImpl.kt     <-- Implementación (ADAPTADOR)
├── application/
│   └── usecase/
│       ├── GetForumFeedUseCase.kt <-- Lógica Central de Negocio
│       └── PublishPostUseCase.kt
└── presentation/
    ├── viewmodel/
    │   ├── ForumViewModel.kt      <-- Estado de UI (StateFlow)
    │   └── NewPostViewModel.kt
    ├── navigation/                <-- Rutas: "forum/feed"
    ├── views/
    │   ├── feed/ForumScreen.kt    <-- Interfaz Principal
    │   └── thread/ThreadScreen.kt
    └── components/
        └── PostCard.kt            <-- Widget de UI
```

---

## Capa Compartida (`shared/`)

El bounded context `shared` maneja el código utilizado por múltiples contextos:
- `presentation/theme/`: Colores de marca, tipografía (Exo) y formas.
- `presentation/components/`: Widgets reutilizables de la marca (`SoftWorkButton`, `SoftWorkTextField`).
- `data/network/`: `ApiClient` (configuración de Retrofit) e Interceptores.
- `utils/`:
    - `values/`: Enums que transportan datos (Keys/Labels).
    - `discriminators/`: Tipos suma puros para ramas de `when`.
    - `constants/`: Literales globales (Regex, Dominios).

---

## Resumen del Flujo de Datos

1. **Acción del Usuario**: El usuario pulsa "Publicar" en `NewPostScreen`.
2. **Evento**: Se llama a `NewPostViewModel.publish()`.
3. **Llamada al Dominio**: El ViewModel llama a `postStore.publish(content)`.
4. **Lógica del Adaptador**: `PostStoreImpl` llama a `PostWebService` (Red).
5. **Persistencia**: En caso de éxito, `PostStoreImpl` actualiza el resultado en `PostDao` (Local).
6. **Reactividad**: La UI observa un Flow proveniente de `PostDao` expuesto por el `StateFlow` de solo lectura del `ViewModel`, actualizando la pantalla automáticamente.
