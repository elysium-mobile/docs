# Capítulo III: Solution UI/UX Design {#capítulo-iii-solution-ui-ux-design}

En este capítulo se presentan los diseños de la interfaz de usuario (UI) y la experiencia de usuario (UX) para la solución propuesta. Se incluyen las directrices de estilo, la arquitectura de la información, el diseño de la página de inicio y el diseño de las aplicaciones móviles. Cada sección se detalla con wireframes, mock-ups, diagramas de flujo y prototipos para ilustrar el proceso de diseño y las decisiones tomadas.

## 3.1. Product Design {#product-design}

### 3.1.1. Style Guidelines {#style-guidelines}

#### 3.1.1.1. General Style Guidelines {#general-style-guidelines}

### 3.1.2. Information Architecture {#information-architecture}

#### 3.1.2.1. Organization Systems {#organization-systems}

El contenido de SoftWork se organiza mediante distintos esquemas según la sección del producto y el perfil del usuario.

**Landing Page — Organización Secuencial**

El Landing Page guía al visitante a través de un flujo narrativo paso a paso, diseñado para informar y convertir al potencial cliente empresarial. El orden responde a una lógica de descubrimiento progresivo:

| Paso | Sección | Propósito |
|------|---------|-----------|
| 1 | Hero / Propuesta de Valor | Captar atención y comunicar el problema que resuelve SoftWork |
| 2 | Funcionalidades clave | Mostrar qué puede hacer el producto |
| 3 | Comparativa de Planes | Ayudar al visitante a elegir el plan adecuado |
| 4 | Testimonios / Datos | Generar confianza con evidencia |
| 5 | Formulario de contacto / Demo | Convertir al visitante en lead |

Este esquema secuencial asegura que ningún visitante llegue a la sección de precios sin antes haber comprendido el valor del producto.

---

**Aplicación Móvil — Organización Jerárquica por Rol**

Dentro de la app, el contenido se organiza de forma jerárquica partiendo del rol asignado al usuario al momento del registro. Cada rol accede a una jerarquía de contenido diferente:

**Esquemas de categorización utilizados**

| Esquema | Dónde se aplica |
|---------|----------------|
| **Por tópicos** | Categorías del foro (Clima laboral, Sugerencias, Eventos, Dudas, Reconocimientos) |
| **Por audiencia** | Separación completa de vistas y funcionalidades según rol (Empleado / RRHH Manager) |
| **Cronológico** | Historial de bienestar personal, historial de pagos e historial de encuestas enviadas |
| **Jerárquico** | Estructura de navegación principal en la app (sección > subsección > detalle) |
| **Matricial** | Dashboard analítico: el gerente combina filtros de área, periodo e indicador para explorar datos desde múltiples dimensiones |

#### 3.1.2.2. Labelling Systems {#labelling-systems}

El sistema de etiquetado de SoftWork prioriza la claridad y la simplicidad. Todas las etiquetas están redactadas en español, dado que la aplicación está dirigida principalmente al mercado peruano, a excepción de términos técnicos del dominio que se mantienen en inglés por consistencia con la arquitectura del sistema (como Dashboard, Feedback o Forum).

**Etiquetas de navegación principal — Empleado**

| Ícono | Etiqueta | Descripción de contenido |
|-------|----------|--------------------------|
|   | Inicio | Resumen del estado de bienestar y actividad reciente |
|   | Foro | Muro de discusiones del entorno laboral |
|   | Mis Encuestas | Encuestas recibidas y pendientes de responder |
|   | Mensajes | Comunicaciones privadas de RRHH |
|   | Perfil | Datos personales y configuración de privacidad |

**Etiquetas de navegación principal — RRHH Manager**

| Ícono | Etiqueta | Descripción de contenido |
|-------|----------|--------------------------|
|   | Dashboard | Panel de indicadores de clima laboral |
|   | Foro | Moderación y gestión del foro laboral |
|   | Feedback | Creación y envío de encuestas y mensajes directos |
|   | Suscripción | Gestión de plan, licencias y pagos |
|   | Perfil | Datos de la organización y configuración |

**Etiquetas de acciones frecuentes**

| Acción | Etiqueta en pantalla |
|--------|---------------------|
| Crear publicación en el foro | Nueva publicación |
| Responder un hilo | Comentar |
| Votar positivamente una publicación | Útil |
| Reportar contenido inapropiado | Reportar |
| Activar identidad protegida | Modo anónimo |
| Ver detalle de métricas | Ver más |
| Exportar métricas del Dashboard | Exportar CSV |
| Crear una nueva encuesta | Nueva encuesta |
| Enviar mensaje directo a empleado | Enviar mensaje |
| Gestionar plan de suscripción | Gestionar plan |

**Etiquetas de estados del sistema**

| Estado | Etiqueta mostrada |
|--------|------------------|
| Membresía activa | Activa |
| Membresía vencida | Vencida |
| Membresía cancelada | Cancelada |
| Encuesta pendiente de respuesta | Pendiente |
| Encuesta ya respondida | Completada |
| Usuario operando en anonimato | Anónimo |
| Publicación bajo revisión de moderación | En revisión |
| Pago procesado correctamente | Confirmado |
| Pago rechazado por el banco | Fallido |

**Etiquetas de categorías del Workers Forum**

| Etiqueta | Uso |
|----------|-----|
| Clima laboral | Situaciones que afectan el ambiente de trabajo |
| Sugerencias | Ideas para mejorar el entorno laboral |
| Eventos | Actividades y comunicados de la empresa |
| Dudas | Consultas generales al equipo o a RRHH |
| Reconocimientos | Menciones positivas a compañeros o logros del equipo |

**Etiquetas de secciones internas del Dashboard (RRHH Manager)**

| Etiqueta | Contenido que representa |
|----------|--------------------------|
| Bienestar general | Índice promedio de satisfacción de los empleados |
| Nivel de estrés | Indicador de carga emocional reportada |
| Participación | Porcentaje de empleados activos en el foro y encuestas |
| Riesgo de rotación | Áreas o perfiles con alto riesgo de deserción (Churn) |
| Alertas críticas | Caídas drásticas en el índice de satisfacción de un equipo |

#### 3.1.2.3. SEO Tags and Meta Tags {#seo-tags-and-meta-tags}

**Landing Page**

```html
<!-- Title -->
<title>SoftWork | Plataforma de Bienestar y Clima Laboral para Empresas</title>

<!-- Meta Description -->
<meta name="description" content="SoftWork es la plataforma móvil que conecta a empleados y Recursos Humanos de forma segura y anónima. Mejora el clima laboral con foros, encuestas, dashboards analíticos e inteligencia artificial.">

<!-- Meta Keywords -->
<meta name="keywords" content="clima laboral, bienestar laboral, recursos humanos, aplicación RRHH, foro laboral anónimo, encuestas de clima, dashboard RRHH, gestión de talento, retención de empleados, Perú">

<!-- Meta Author -->
<meta name="author" content="Elysium">

<!-- Meta Robots -->
<meta name="robots" content="index, follow">

<!-- Open Graph -->
<meta property="og:title" content="SoftWork | Bienestar Laboral Inteligente">
<meta property="og:description" content="Conecta a tus empleados con RRHH de forma segura, anónima y basada en datos. Descubre SoftWork.">
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.softwork.pe">
<meta property="og:locale" content="es_PE">

<!-- Meta Viewport -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Meta Charset -->
<meta charset="UTF-8">
```

**Web Application (Login / Acceso)**

```html
<!-- Title -->
<title>Iniciar Sesión | SoftWork</title>

<!-- Meta Description -->
<meta name="description" content="Accede a tu cuenta SoftWork para gestionar el bienestar laboral de tu organización o reportar tu estado anímico de forma anónima y segura.">

<!-- Meta Keywords -->
<meta name="keywords" content="iniciar sesión SoftWork, acceso RRHH, plataforma laboral, empleado anónimo">

<!-- Meta Author -->
<meta name="author" content="Elysium">

<!-- Meta Robots (no indexar páginas internas) -->
<meta name="robots" content="noindex, nofollow">
```

**ASO (App Store Optimization) — Google Play Store**

| Campo | Valor |
|-------|-------|
| **App Title** | SoftWork: Bienestar Laboral |
| **App Subtitle** | Foro, encuestas y analíticas RRHH |
| **App Keywords** | clima laboral, RRHH, bienestar, foro anónimo, encuestas, recursos humanos, empresas Perú, feedback laboral, gestión de talento |
| **App Description** | SoftWork es la aplicación móvil que transforma la comunicación entre empleados y Recursos Humanos. Reporta tu estado de ánimo de forma anónima, participa en foros laborales, responde encuestas de bienestar y recibe apoyo personalizado. Para los RRHH Managers, accede a dashboards en tiempo real, detecta riesgos de rotación (Churn) y gestiona el clima organizacional basándote en datos reales. Descarga SoftWork y construye un entorno de trabajo más humano, transparente y productivo. |
| **App Category** | Productividad / Negocios |
| **App Content Rating** | Apto para mayores de 12 años |

#### 3.1.2.4. Searching Systems {#searching-systems}

SoftWork ofrece mecanismos de búsqueda y filtrado diferenciados según la sección y el rol del usuario. El objetivo es evitar que los usuarios se sientan perdidos ante el volumen de publicaciones, encuestas y datos analíticos disponibles.

**Búsqueda en el Workers Forum (ambos roles)**

Este es el sistema de búsqueda más completo de la aplicación, dado que el foro es el módulo con mayor volumen de contenido generado por los usuarios.

| Elemento | Descripción |
|----------|-------------|
| **Tipo de búsqueda** | Búsqueda de texto libre por título o contenido del hilo |
| **Ubicación** | Barra de búsqueda en la parte superior de la sección Foro |
| **Filtros disponibles** | Categoría (Clima laboral, Sugerencias, Eventos, Dudas, Reconocimientos) y Orden (Más recientes, Más votados, Más comentados) |
| **Presentación de resultados** | Lista de hilos con título, categoría, número de comentarios, número de votos y fecha. Si no hay resultados se muestra el mensaje: *"No se encontraron publicaciones con ese término. Intenta con otras palabras o revisa las categorías."* |

**Filtrado en el Dashboard (solo RRHH Manager)**

El RRHH Manager no realiza búsquedas de texto libre en el Dashboard, sino que filtra y segmenta los datos mediante controles visuales. Al aplicar los filtros, los widgets del Dashboard se actualizan en tiempo real mostrando únicamente los datos que corresponden a los parámetros seleccionados.

| Filtro | Opciones |
|--------|---------|
| **Área / Departamento** | Lista desplegable con todas las áreas registradas de la empresa |
| **Periodo de tiempo** | Última semana, Último mes, Últimos 3 meses, Rango personalizado |
| **Indicador** | Bienestar general, Nivel de estrés, Participación, Respuestas a encuestas |
| **Equipo de trabajo** | Lista de equipos dentro del área seleccionada |

Si la combinación de filtros no arroja datos suficientes, se muestra el mensaje: *"No hay suficientes datos para este periodo. Amplía el rango de fechas o selecciona otra área."*

**Filtrado de Encuestas (solo RRHH Manager)**

| Filtro | Opciones |
|--------|---------|
| **Estado** | Todas, Pendientes, Completadas, Vencidas |
| **Área destinataria** | Área específica de la organización |
| **Fecha de creación** | Orden cronológico ascendente / descendente |

**Resumen de mecanismos por sección**

| Sección | Búsqueda de texto | Filtros | Ordenamiento |
|---------|:-----------------:|:-------:|:------------:|
| Workers Forum | ✅ Sí | ✅ Por categoría | ✅ Recientes / Votados / Comentados |
| Dashboard Analítico | ❌ No aplica | ✅ Área, periodo, indicador, equipo | ❌ No aplica |
| Encuestas enviadas | ❌ No aplica | ✅ Estado, área, fecha | ✅ Cronológico |
| Historial de pagos | ❌ No aplica | ❌ No aplica | ✅ Cronológico |
| Mis publicaciones (Empleado) | ❌ No aplica | ❌ No aplica | ✅ Cronológico |

#### 3.1.2.5. Navigation Systems {#navigation-systems}

SoftWork utiliza un sistema de navegación diseñado para que tanto el Empleado como el RRHH Manager puedan cumplir sus objetivos de forma directa, sin pasos innecesarios ni estructuras confusas.

**Patrón de navegación principal — Bottom Navigation Bar**

La aplicación móvil nativa Android utiliza una **Bottom Navigation Bar** como sistema de navegación principal. Esta barra permanece visible en todo momento y permite al usuario moverse entre las secciones principales con un solo toque.

*Bottom Navigation Bar — Empleado:*

```
[ Inicio ]  [ Foro ]  [ Mis Encuestas ]  [ Mensajes ]  [ Perfil ]
```

*Bottom Navigation Bar — RRHH Manager:*

```
[ Dashboard ]  [ Foro ]  [ Feedback ]  [ Suscripción ]  [ Perfil ]
```

**Navegación secundaria — Navegación interna por sección**

Dentro de cada sección principal, la navegación se realiza mediante los siguientes mecanismos:

| Mecanismo | Dónde se usa | Descripción |
|-----------|-------------|-------------|
| **Lista con tap** | Foro, Encuestas, Historial de pagos | El usuario toca un ítem de la lista para acceder a su vista de detalle |
| **Tabs horizontales** | Foro (Categorías), Dashboard (indicadores) | Permiten cambiar entre subvistas dentro de la misma sección sin salir de ella |
| **Scroll infinito** | Foro (lista de hilos), Historial de mensajes | El contenido se carga progresivamente conforme el usuario hace scroll hacia abajo |
| **Floating Action Button (FAB)** | Foro | Botón de acción principal para crear una nueva publicación, siempre visible y accesible |
| **Bottom Sheet** | Filtros del foro, opciones de publicación | Panel deslizable desde la parte inferior para mostrar opciones sin abandonar la pantalla actual |
| **Modal / Diálogo** | Confirmaciones críticas | Interrumpe el flujo para solicitar confirmación en acciones como cerrar sesión, cancelar suscripción o reportar contenido |

**Navegación del Landing Page**

El Landing Page utiliza un sistema de navegación de página única con scroll suave (smooth scroll) anclado a secciones. La barra de navegación superior es fija (sticky) y contiene los siguientes enlaces:

```
[ SoftWork Logo ]  [ Funcionalidades ]  [ Planes ]  [ Contacto ]  [ Iniciar Sesión ]
```

En dispositivos móviles, el menú colapsa en un menú hamburguesa que despliega las mismas opciones en formato vertical.

**Flujos de navegación principales por objetivo**

*Flujo 1 — Empleado publica en el foro:*

```
Inicio → [ Foro ] en Bottom Nav → Selecciona categoría →
Toca FAB "Nueva publicación" → Completa formulario → Envía →
Regresa a lista del foro con nueva publicación visible
```

*Flujo 2 — Empleado responde encuesta diaria:*

```
Inicio → Notificación de encuesta pendiente →
[ Mis Encuestas ] en Bottom Nav → Selecciona encuesta →
Responde preguntas → Confirma envío →
Pantalla de confirmación → Regresa a Inicio
```

*Flujo 3 — RRHH Manager analiza clima por área:*

```
Inicio → [ Dashboard ] en Bottom Nav →
Dashboard global visible → Aplica filtro de área →
Dashboard se actualiza → Toca widget para ver detalle →
Vista expandida del indicador → Regresa con botón atrás nativo
```

*Flujo 4 — RRHH Manager crea y envía encuesta:*

```
Inicio → [ Feedback ] en Bottom Nav →
Toca "Nueva encuesta" → Selecciona área destinataria →
Agrega preguntas → Establece fecha límite →
Confirma y envía → Notificación enviada a empleados del área
```

**Principios de navegación aplicados**

| Principio | Aplicación en SoftWork |
|-----------|----------------------|
| **Mínimo de pasos** | Ninguna tarea crítica requiere más de 4 pasos desde la pantalla principal |
| **Contexto siempre visible** | El título de la sección activa se muestra en la barra superior de cada pantalla |
| **Retroceso predecible** | El botón nativo de Android retrocede siempre un nivel dentro de la jerarquía, nunca cierra la app desde pantallas internas |
| **Acceso rápido a acciones principales** | El FAB en el foro y los accesos directos en el Inicio reducen la cantidad de taps necesarios |
| **Separación por rol** | El sistema de navegación se configura automáticamente al iniciar sesión según el rol asignado, eliminando opciones irrelevantes para cada perfil |

### 3.1.3. Landing Page UI Design {#landing-page-ui-design}

#### 3.1.3.1. Landing Page Wireframe {#landing-page-wireframe}

#### 3.1.3.2. Landing Page Mock-up {#landing-page-mock-up}

### 3.1.4. Mobile Applications UX/UI Design {#mobile-applications-ux-ui-design}

#### 3.1.4.1. Mobile Applications Wireframes {#mobile-applications-wireframes}

#### 3.1.4.2. Mobile Applications Wireflow Diagrams {#mobile-applications-wireflow-diagrams}

#### 3.1.4.3. Mobile Applications Mock-ups {#mobile-applications-mock-ups}

#### 3.1.4.4. Mobile Applications User Flow Diagrams {#mobile-applications-user-flow-diagrams}

#### 3.1.4.5. Mobile Applications Prototyping {#mobile-applications-prototyping}
