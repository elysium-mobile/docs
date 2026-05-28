# SoftWork — Guía de Arquitectura Android

Este documento describe los patrones arquitectónicos y la estructura de directorios utilizada en el Cliente para Empleados de SoftWork. El proyecto sigue los principios de **Domain-Driven Design (DDD)** y una variante de **Arquitectura Hexagonal** (Puertos y Adaptadores) adaptada para el desarrollo moderno en Android.

---

## Objetivos Arquitectónicos de Alto Nivel

1.  **Separación de Responsabilidades**: La lógica de negocio (Dominio) está desacoplada de la interfaz de usuario (Presentación) y de la infraestructura (Datos).
2.  **Modularidad**: Las funcionalidades están aisladas en **Bounded Contexts** (Contextos Delimitados) para minimizar los efectos secundarios.
3.  **Capacidad de Pruebas**: La capa de Dominio contiene código Kotlin puro, lo que facilita las pruebas unitarias en la JVM.
4.  **Consistencia**: Se aplica una estructura predecible de 4 capas a cada funcionalidad.

---

## Estructura del Proyecto: Paquete por Funcionalidad

Utilizamos un enfoque de **Bounded Context**. En lugar de agrupar todos los ViewModels o todos los Fragments juntos, agrupamos por capacidad de negocio bajo `com.elysium.softwork`.

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
El "corazón" del software. Contiene las reglas de negocio y las entidades.
- **Modelos**: Clases de datos (data classes) de Kotlin puro (ej. `Post`, `User`).
- **Interfaces Store**: Actúan como los **Puertos** en la Arquitectura Hexagonal. Definen *qué* operaciones de datos se necesitan sin saber *cómo* están implementadas.
- **Reglas**: **Cero dependencias de Android.** Sin Retrofit, sin Room, sin Compose.

### 2. Capa de Datos (`data/store/`)
La infraestructura o los **Adaptadores**.
- **Implementaciones de Store**: Implementan las interfaces del Dominio (ej. `PostStoreImpl`).
- **WebServices**: Interfaces de Retrofit para la comunicación con la API.
- **DAOs**: Interfaces de Room para la persistencia local.
- **Lógica**: Orquesta entre la Red y el Caché Local (estrategia Offline-first).

### 3. Capa de Aplicación (`application/`)
La capa de orquestación.
- **ViewModels**: Mantienen el estado de la UI y manejan la intención del usuario. Se comunican con el `Store`.
- **Validación**: Lógica pura para validación de formularios (ej. `AuthValidation`).
- **Factories**: Implementaciones de `ViewModelProvider.Factory` para la Inyección de Dependencias (DI) manual.

### 4. Capa de Presentación (`presentation/`)
La representación visual.
- **Views/Screens**: Funciones de Jetpack Compose que definen el diseño.
- **Components**: Widgets de UI específicos de la funcionalidad.
- **Navigation**: Definiciones de rutas y constructores de NavGraph.

---

## Patrones Clave

### El Patrón Store
Utilizamos el término **Store** en lugar de Repository para alinearnos con las convenciones de nombres de frontend y evitar la verbosidad de sufijos como `RepositoryImpl`.
- La `interface` vive en el **Dominio**.
- La `implementation` vive en los **Datos**.

### Inyección de Dependencias Manual (Service Locator)
**No** utilizamos Hilt ni Dagger.
- `SoftWorkApplication` posee un `ServiceLocator`.
- El `ServiceLocator` instancia singletons (Retrofit, Base de Datos, Stores).
- Los ViewModels reciben sus dependencias a través de su `Factory` desde el `ServiceLocator`.

### Bean / Atajo Pragmático
Para simplificar, a menudo usamos una única data class de Kotlin tanto para el Modelo de Dominio como para el DTO de Red/Base de Datos.
- Las clases están anotadas con `@SerializedName` (Gson) y `@Entity` (Room) cuando es necesario.
- Esto evita el código repetitivo de mapeadores, pero requiere que todos los campos sean opcionales o tengan valores por defecto si el contrato de red es inestable.

---

## Ejemplo: Contexto del Foro (Worker Forum)

Así es como se mapea el bounded context del **Foro** a través de la arquitectura:

```text
worker/forum/
├── domain/
│   ├── model/Post.kt             <-- Entidad de Negocio
│   └── store/PostStore.kt        <-- Interfaz
├── data/
│   ├── network/PostWebService.kt <-- Cliente de Red
│   ├── local/PostDao.kt          <-- Caché Local
│   └── store/PostStoreImpl.kt    <-- Implementación (Lógica)
├── application/
│   └── viewmodel/
│       ├── ForumViewModel.kt     <-- Gestión de Estado de UI
│       └── NewPostViewModel.kt
└── presentation/
    ├── navigation/               <-- Rutas: "forum/feed"
    ├── views/
    │   ├── feed/ForumScreen.kt   <-- Interfaz Principal
    │   └── thread/ThreadScreen.kt
    └── components/
        └── PostCard.kt           <-- Widget de UI
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
6. **Reactividad**: La UI está observando un `Flow` desde `PostDao`, por lo que la nueva publicación aparece automáticamente.
