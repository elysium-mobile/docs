# Capítulo III: Solution UI/UX Design {#capítulo-iii-solution-ui-ux-design}

En este capítulo se presentan los diseños de la interfaz de usuario (UI) y la experiencia de usuario (UX) para la solución propuesta. Se incluyen las directrices de estilo, la arquitectura de la información, el diseño de la página de inicio y el diseño de las aplicaciones móviles. Cada sección se detalla con wireframes, mock-ups, diagramas de flujo y prototipos para ilustrar el proceso de diseño y las decisiones tomadas.

## 3.1. Product Design {#product-design}

En esta sección se describen los aspectos clave del diseño de la solución: directrices de estilo, arquitectura de la información y sistemas de navegación. El enfoque aplica principios de SCRUM y Lean UX para iterar rápidamente sobre hipótesis de producto, validar con usuarios y entregar componentes reutilizables dentro de un Design System móvil.

Objetivos breves:
- Asegurar consistencia visual y accesibilidad mediante Design Tokens obligatorios (colores, tipografía, espaciamiento, elevaciones).
- Facilitar desarrollo ágil y diseño colaborativo con componentes reutilizables y documentación clara para desarrolladores y diseñadores.

### 3.1.1. Style Guidelines {#style-guidelines}

Con el objetivo de crear una identidad visual coherente y atractiva para SoftWork, las siguientes directrices definen cómo aplicar los Design Tokens y los componentes base en todas las pantallas móviles. Estas reglas priorizan legibilidad, jerarquía visual y facilidad de implementación por equipos SCRUM.

#### 3.1.1.1. General Style Guidelines {#general-style-guidelines}


#### Branding

El logo de SoftWork (Elysium) comunica profesionalismo y cercanía. Reglas de uso resumidas:
- Versiones: fondo oscuro (para splash y headers) y versión sin fondo (para cards y espacios claros).
- Margen mínimo: 16px alrededor del isotipo.
- Versiones monocromáticas (blanco o gris oscuro) solo para casos de contraste extremo.

![SoftWork Logo](assets/images/cap3/style-guidelines/elysium-logo.jpg){width=20%}

#### Tipografía

Fuente del sistema: Exo (Google Fonts). Uso por jerarquía:

- Display: Exo ExtraBold 800 — Splash / Onboarding (32px)
- Heading 1: Exo Bold 700 — Secciones principales (22px)
- Heading 2: Exo SemiBold 600 — Subtítulos (18px)
- Body: Exo Regular 400 — Contenido principal (15px)
- Caption: Exo Light 300 — Labels y timestamps (12px)
- Button: Exo SemiBold 600 — CTA (14px)
- Badge: Exo Medium 500 — Tags (11px)

Con esta tipografía se busca transmitir modernidad y profesionalismo, manteniendo una excelente legibilidad en pantallas móviles.

#### Paleta de colores

| Nombre | Código Hex | Uso |
|:---|:---:|:---|
| Azul Navy | #1C4B78 | Fondos de headers, CTAs principales RRHH, iconos de autoridad |
| Azul Cielo | #4DA8DA | Botones primarios Employee App, links, estados activos |
| Verde Teal | #19A4A1 | Acentos, badges de éxito, iconos del Employee App |
| Blanco | #F2F4F7 | Fondos de pantalla, cards en modo claro |
| Gris Oscuro | #3E3E3E | Texto principal, iconos neutros |
| Menta | #A5E3D8 | Estados suaves, chips anónimos, fondos de notificación |

#### Colores semánticos

| Nombre semántico | Código Hex | Uso |
|:---|:---:|:---|
| Éxito | #19A4A1 | Confirmaciones, check-ins positivos |
| Advertencia | #E8A838 | Alertas de clima, riesgo medio |
| Peligro | #C94040 | Alertas críticas, denuncias, riesgo alto |
| Información | #4DA8DA | Mensajes informativos, tooltips |

Tokens auxiliares:
- Border radius: cards 16px, botones 12px, chips 20px
- Spacing base: 8px grid (8, 16, 24, 32, 40px)


### 3.1.2. Information Architecture {#information-architecture} 

En esta sección se detalla la arquitectura de la información de SoftWork, que abarca la organización del contenido, los sistemas de etiquetado, las etiquetas SEO y meta, los sistemas de búsqueda y los sistemas de navegación. La arquitectura de la información es fundamental para garantizar que los usuarios puedan encontrar fácilmente lo que buscan y navegar por la plataforma de manera intuitiva.

#### 3.1.2.1. Organization Systems {#organization-systems}

El contenido de SoftWork se organiza mediante distintos esquemas según la sección del producto y el perfil del usuario.

**Landing Page — Organización Secuencial**

El Landing Page guía al visitante a través de un flujo narrativo paso a paso, diseñado para informar y convertir al potencial cliente empresarial. El orden responde a una lógica de descubrimiento progresivo:

| Paso | Sección | Propósito |
|:---|:---|:---|
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
|:---|:---|
| **Por tópicos** | Categorías del foro (Clima laboral, Sugerencias, Eventos, Dudas, Reconocimientos) |
| **Por audiencia** | Separación completa de vistas y funcionalidades según rol (Empleado / RRHH Manager) |
| **Cronológico** | Historial de bienestar personal, historial de pagos e historial de encuestas enviadas |
| **Jerárquico** | Estructura de navegación principal en la app (sección > subsección > detalle) |
| **Matricial** | Dashboard analítico: el gerente combina filtros de área, periodo e indicador para explorar datos desde múltiples dimensiones |

#### 3.1.2.2. Labelling Systems {#labelling-systems}

El sistema de etiquetado de SoftWork prioriza la claridad y la simplicidad. Todas las etiquetas están redactadas en español, dado que la aplicación está dirigida principalmente al mercado peruano, a excepción de términos técnicos del dominio que se mantienen en inglés por consistencia con la arquitectura del sistema (como Dashboard, Feedback o Forum).

**Etiquetas de navegación principal — Empleado**

| Etiqueta | Descripción de contenido |
|:---|:---|
| Inicio | Resumen del estado de bienestar y actividad reciente |
| Foro | Muro de discusiones del entorno laboral |
| Mis Encuestas | Encuestas recibidas y pendientes de responder |
| Mensajes | Comunicaciones privadas de RRHH |
| Perfil | Datos personales y configuración de privacidad |

**Etiquetas de navegación principal — RRHH Manager**

| Etiqueta | Descripción de contenido |
|:---|:---|
| Dashboard | Panel de indicadores de clima laboral |
| Foro | Moderación y gestión del foro laboral |
| Feedback | Creación y envío de encuestas y mensajes directos |
| Suscripción | Gestión de plan, licencias y pagos |
| Perfil | Datos de la organización y configuración |

**Etiquetas de acciones frecuentes**

| Acción | Etiqueta en pantalla |
|:---|:---|:---|
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
|:---|:---|
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
|:---|:---|
| Clima laboral | Situaciones que afectan el ambiente de trabajo |
| Sugerencias | Ideas para mejorar el entorno laboral |
| Eventos | Actividades y comunicados de la empresa |
| Dudas | Consultas generales al equipo o a RRHH |
| Reconocimientos | Menciones positivas a compañeros o logros del equipo |

**Etiquetas de secciones internas del Dashboard (RRHH Manager)**

| Etiqueta | Contenido que representa |
|:---|:---|
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
|:---|:---|
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
|:---|:---|
| **Tipo de búsqueda** | Búsqueda de texto libre por título o contenido del hilo |
| **Ubicación** | Barra de búsqueda en la parte superior de la sección Foro |
| **Filtros disponibles** | Categoría (Clima laboral, Sugerencias, Eventos, Dudas, Reconocimientos) y Orden (Más recientes, Más votados, Más comentados) |
| **Presentación de resultados** | Lista de hilos con título, categoría, número de comentarios, número de votos y fecha. Si no hay resultados se muestra el mensaje: *"No se encontraron publicaciones con ese término. Intenta con otras palabras o revisa las categorías."* |

**Filtrado en el Dashboard (solo RRHH Manager)**

El RRHH Manager no realiza búsquedas de texto libre en el Dashboard, sino que filtra y segmenta los datos mediante controles visuales. Al aplicar los filtros, los widgets del Dashboard se actualizan en tiempo real mostrando únicamente los datos que corresponden a los parámetros seleccionados.

| Filtro | Opciones |
|:---|:---|
| **Área / Departamento** | Lista desplegable con todas las áreas registradas de la empresa |
| **Periodo de tiempo** | Última semana, Último mes, Últimos 3 meses, Rango personalizado |
| **Indicador** | Bienestar general, Nivel de estrés, Participación, Respuestas a encuestas |
| **Equipo de trabajo** | Lista de equipos dentro del área seleccionada |

Si la combinación de filtros no arroja datos suficientes, se muestra el mensaje: *"No hay suficientes datos para este periodo. Amplía el rango de fechas o selecciona otra área."*

**Filtrado de Encuestas (solo RRHH Manager)**

| Filtro | Opciones |
|:---|:---|
| **Estado** | Todas, Pendientes, Completadas, Vencidas |
| **Área destinataria** | Área específica de la organización |
| **Fecha de creación** | Orden cronológico ascendente / descendente |

**Resumen de mecanismos por sección**

| Sección | Búsqueda de texto | Filtros | Ordenamiento |
|:---|:---|:---|:---|
| Workers Forum | Sí | Por categoría | Recientes / Votados / Comentados |
| Dashboard Analítico | No aplica | Área, periodo, indicador, equipo | No aplica |
| Encuestas enviadas | No aplica | Estado, área, fecha | Cronológico |
| Historial de pagos | No aplica | No aplica | Cronológico |
| Mis publicaciones (Empleado) | No aplica | No aplica | Cronológico |

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
|:---|:---|:---|
| **Lista con tap** | Foro, Encuestas, Historial de pagos | El usuario toca un ítem de la lista para acceder a su vista de detalle |
| **Tabs horizontales** | Foro (Categorías), Dashboard (indicadores) | Permiten cambiar entre vistas dentro de la misma sección sin salir de ella |
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
|:---|:---|
| **Mínimo de pasos** | Ninguna tarea crítica requiere más de 4 pasos desde la pantalla principal |
| **Contexto siempre visible** | El título de la sección activa se muestra en la barra superior de cada pantalla |
| **Retroceso predecible** | El botón nativo de Android retrocede siempre un nivel dentro de la jerarquía, nunca cierra la app desde pantallas internas |
| **Acceso rápido a acciones principales** | El FAB en el foro y los accesos directos en el Inicio reducen la cantidad de taps necesarios |
| **Separación por rol** | El sistema de navegación se configura automáticamente al iniciar sesión según el rol asignado, eliminando opciones irrelevantes para cada perfil |

### 3.1.3. Landing Page UI Design {#landing-page-ui-design}

En esta sección se presentan los diseños de la página de inicio (Landing Page) de SoftWork, que es la primera impresión que tendrán los visitantes y potenciales clientes empresariales. Se incluyen tanto el wireframe como el mock-up final, mostrando cómo se aplican las directrices de estilo y la arquitectura de la información para crear una experiencia visual atractiva y coherente con la marca.

#### 3.1.3.1. Landing Page Wireframe {#landing-page-wireframe}

Primera vista: Hero principal y vista móvil: presenta la propuesta de valor, CTA principal "Solicitar Demo" y mockup del flujo móvil; diseñado para captura de leads y primera impresión.

![Landing Page Wireframe 1](assets/images/cap3/landing-page/wireframes/landing-wireframe-1.png){width=70%}

Segunda vista: Sección de valor y beneficios: estructura dos columnas con texto explicativo a la izquierda y ejemplo de publicación/foro a la derecha; enfatiza seguridad y anonimato.

![Landing Page Wireframe 2](assets/images/cap3/landing-page/wireframes/landing-wireframe-2.png){width=70%}

Tercera vistas: Insights y métricas: panel con indicadores clave (pulseo de clima, métricas de participación) junto a texto que resalta visibilidad en tiempo real para RRHH.

![Landing Page Wireframe 3](assets/images/cap3/landing-page/wireframes/landing-wireframe-3.png){width=70%}

Cuarta vista: Conversación asistida y soporte IA: muestra interaction flow de asistente IA y ventajas operativas (24/7, contención), con CTA para probar demo.

![Landing Page Wireframe 4](assets/images/cap3/landing-page/wireframes/landing-wireframe-4.png){width=70%}

#### 3.1.3.2. Landing Page Mock-up {#landing-page-mock-up}

Primera mockup — Hero realzado: versión coloreada del hero con CTA primario destacado en Azul Navy y botón secundario outlined. El mockup del móvil muestra la pantalla de inicio del Employee App con un post destacado en el foro, reforzando la propuesta de valor.

![Landing Page Mock-up 1](assets/images/cap3/landing-page/mockups/landing-mockup-1.png){width=70%}

Segunda mockup — Conversación y demo IA: muestra la interacción con el asistente IA dentro de un contenedor card; acentos en Verde Teal para estados positivos y microcopy que refuerza privacidad. Uso: prueba de concepto para demo interactiva.

![Landing Page Mock-up 2](assets/images/cap3/landing-page/mockups/landing-mockup-2.png){width=70%}

Tercera mockup — Panel de métricas: visualización de indicadores clave con componentes card y barra de progreso; los acentos de color identifican tendencias (positivo/negativo). Uso: evidencia para RRHH y venta consultiva.

![Landing Page Mock-up 3](assets/images/cap3/landing-page/mockups/landing-mockup-3.png){width=70%}

Cuarta mockup — Llamado a la acción y footer: bloque de conversión con fondo Azul Navy y CTA contrastado. Footer con navegación secundaria y enlaces legales; diseñado para cierre de jornada en la página.

![Landing Page Mock-up 4](assets/images/cap3/landing-page/mockups/landing-mockup-4.png){width=70%}

Las Fortalezas que tiene el diseño del Landing Page son: jerarquía visual clara, uso consistente de la paleta y tipografía, y foco en conversión con CTAs visibles.

### 3.1.4. Mobile Applications UX/UI Design {#mobile-applications-ux-ui-design}

#### 3.1.4.1. Mobile Applications Wireframes {#mobile-applications-wireframes}

Se procederá a presentar los Wireframes del aplicativo móvil:

**Registro de Usuario**  
Pantalla de creación de cuenta para nuevos usuarios dentro de la aplicación.

![Register Wireframe](assets/images/cap3/mobile-app/Wireframes/Registro.png){width=70%}

**Registro con Google**  
Vista de autenticación mediante una cuenta de Google.

![Google Wireframe](assets/images/cap3/mobile-app/Wireframes/RegistroGoogle.png){width=70%}

**Planes de Membresía**  
Pantalla donde se visualizan los planes de suscripción disponibles.

![Memberships Wireframe](assets/images/cap3/mobile-app/Wireframes/PlanesPago.png){width=70%}

**Menú Principal del Empleado**  
Interfaz principal con las opciones disponibles para el empleado.

![Employee Menu Wireframe](assets/images/cap3/mobile-app/Wireframes/MenuEmpleado.png){width=70%}

**Menú Principal de RRHH**  
Vista principal destinada al área de Recursos Humanos.

![HR Menu Wireframe](assets/images/cap3/mobile-app/Wireframes/MenuRRHH.png){width=70%}

**Llenado de Encuestas**  
Pantalla para responder encuestas relacionadas al clima laboral.

![Filling Survey Wireframe](assets/images/cap3/mobile-app/Wireframes/LlenarEncuesta.png){width=70%}

**Edición de Perfil del Empleado**  
Vista para actualizar la información personal del empleado.

![Profile Edit Employee Wireframe](assets/images/cap3/mobile-app/Wireframes/EditarPerfil.png){width=70%}

**Modo Anónimo**  
Funcionalidad que permite interactuar de manera anónima dentro de la aplicación.

![Anonymus Mode Wireframe](assets/images/cap3/mobile-app/Wireframes/ModoAnonimo.png){width=70%}

**Foro de Comunicación**  
Espacio de interacción y comunicación entre usuarios.

![Forum Wireframe](assets/images/cap3/mobile-app/Wireframes/Foro.png){width=70%}

**Publicación en el Foro**  
Pantalla para crear nuevas publicaciones dentro del foro.

![New Post Wireframe](assets/images/cap3/mobile-app/Wireframes/PublicarForo.png){width=70%}

**Comentarios en Publicaciones**  
Vista para responder o comentar publicaciones del foro.

![New Comment Wireframe](assets/images/cap3/mobile-app/Wireframes/ComentarForo.png){width=70%}

**Reporte de Publicaciones**  
Funcionalidad para reportar contenido inapropiado dentro del foro.

![Forum Report Wireframe](assets/images/cap3/mobile-app/Wireframes/ReportarForo.png){width=70%}

**Reportes de Datos para RRHH**  
Pantalla de visualización de métricas y reportes para Recursos Humanos.

![Data Report Wireframe](assets/images/cap3/mobile-app/Wireframes/ReporteRRHH.png){width=70%}




#### 3.1.4.2. Mobile Applications Wireflow Diagrams {#mobile-applications-wireflow-diagrams}

A continuación se presentarán los flujos de actividades utilizando los wireframes:

Escenario de registro, aplica para ambos segmentos:
![Sign up Wireflow](assets/images/cap3/userflow/Wireframes/Registro.png){width=70%}

Escenario de pago de suscripción al aplicativo, aplica para ambos segmentos:
![Payment Wireflow](assets/images/cap3/userflow/Wireframes/PagoMembresia.png){width=70%}

Escenario de inicio de sesión, aplica para ambos segmentos:
![Log in Wireflow](assets/images/cap3/userflow/Wireframes/InicioSesion.png){width=70%}

Escenario de edición del perfil, aplica para el segmento 1 (empleado):
![Profile Employee in Wireflow](assets/images/cap3/userflow/Wireframes/EdicionPerfilEmpleado.png){width=70%}

Escenario de edición del perfil, aplica para el segmento 2 (RRHH):
![Profile RRHH in Wireflow](assets/images/cap3/userflow/Wireframes/EdicionPerfilRRHH.png){width=70%}

Escenario de completar la encuesta, aplica para el segmento 1 (empleado):
![Survey Wireflow](assets/images/cap3/userflow/Wireframes/Encuesta.png){width=70%}

Escenario de acceso a estadísticas, aplica para el segmento 2 (RRHH):
![Stats Wireflow](assets/images/cap3/userflow/Wireframes/Estadisticas.png){width=70%}

Escenario de acceso y uso del foro, aplica para el segmento 1 (empleado):
![Forum Wireflow](assets/images/cap3/userflow/Wireframes/Foro.png){width=70%}



#### 3.1.4.3. Mobile Applications Mock-ups {#mobile-applications-mock-ups}

**Registro de Usuario**  
Pantalla de creación de cuenta para nuevos usuarios dentro de la aplicación.

![Register Mockup](assets/images/cap3/mobile-app/Mockups/Registro.png){width=70%}

**Registro con Google**  
Vista de autenticación mediante una cuenta de Google.

![Google Mockup](assets/images/cap3/mobile-app/Mockups/RegistroGoogle.png){width=70%}

**Planes de Membresía**  
Pantalla donde se visualizan los planes de suscripción disponibles.

![Memberships Mockup](assets/images/cap3/mobile-app/Mockups/PlanesPago.png){width=70%}

**Menú Principal del Empleado**  
Interfaz principal con las opciones disponibles para el empleado.

![Employee Menu Mockup](assets/images/cap3/mobile-app/Mockups/MenuEmpleado.png){width=70%}

**Menú Principal de RRHH**  
Vista principal destinada al área de Recursos Humanos.

![HR Menu Mockup](assets/images/cap3/mobile-app/Mockups/MenuRRHH.png){width=70%}

**Llenado de Encuestas**  
Pantalla para responder encuestas relacionadas al clima laboral.

![Filling Survey Mockup](assets/images/cap3/mobile-app/Mockups/LlenarEncuesta.png){width=70%}

**Edición de Perfil del Empleado**  
Vista para actualizar la información personal del empleado.

![Profile Edit Employee Mockup](assets/images/cap3/mobile-app/Mockups/EditarPerfil.png){width=70%}

**Modo Anónimo**  
Funcionalidad que permite interactuar de manera anónima dentro de la aplicación.

![Anonymous Mode Mockup](assets/images/cap3/mobile-app/Mockups/ModoAnonimo.png){width=70%}

**Foro de Comunicación**  
Espacio de interacción y comunicación entre usuarios.

![Forum Mockup](assets/images/cap3/mobile-app/Mockups/Foro.png){width=70%}

**Publicación en el Foro**  
Pantalla para crear nuevas publicaciones dentro del foro.

![New Post Mockup](assets/images/cap3/mobile-app/Mockups/PublicarForo.png){width=70%}

**Comentarios en Publicaciones**  
Vista para responder o comentar publicaciones del foro.

![New Comment Mockup](assets/images/cap3/mobile-app/Mockups/ComentarForo.png){width=70%}

**Reporte de Publicaciones**  
Funcionalidad para reportar contenido inapropiado dentro del foro.

![Forum Report Mockup](assets/images/cap3/mobile-app/Mockups/ReporteForo.png){width=70%}

**Reportes de Datos para RRHH**  
Pantalla de visualización de métricas y reportes para Recursos Humanos.

![Data Report Mockup](assets/images/cap3/mobile-app/Mockups/ReporteRRHH.png){width=70%}

#### 3.1.4.4. Mobile Applications User Flow Diagrams {#mobile-applications-user-flow-diagrams}
A continuación se presentarán los flujos de actividades utilizando los mockups:

Escenario de registro, aplica para ambos segmentos:
![Sign up User Flow](assets/images/cap3/userflow/Mockups/Registro.png){width=70%}

Escenario de pago de suscripción al aplicativo, aplica para ambos segmentos:
![Payment User Flow](assets/images/cap3/userflow/Mockups/Pago.png){width=70%}

Escenario de inicio de sesión, aplica para ambos segmentos:
![Log in User Flow](assets/images/cap3/userflow/Mockups/InicioSesion.png){width=70%}

Escenario de edición del perfil, aplica para el segmento 1 (empleado):
![Profile Employee in User Flow](assets/images/cap3/userflow/Mockups/EdicionPerfilEmpleado.png){width=70%}

Escenario de edición del perfil, aplica para el segmento 2 (RRHH):
![Profile RRHH in User Flow](assets/images/cap3/userflow/Mockups/EdicionPerfilRRHH.png){width=70%}

Escenario de completar la encuesta, aplica para el segmento 1 (empleado):
![Survey User Flow](assets/images/cap3/userflow/Mockups/Encuesta.png){width=70%}

Escenario de acceso a estadísticas, aplica para el segmento 2 (RRHH):
![Stats User Flow](assets/images/cap3/userflow/Mockups/Estadistica.png){width=70%}

Escenario de acceso y uso del foro, aplica para el segmento 1 (empleado):
![Forum User Flow](assets/images/cap3/userflow/Mockups/Foro.png){width=70%}


#### 3.1.4.5. Mobile Applications Prototyping {#mobile-applications-prototyping}

Prototipo de ambos segmentos de usuario en Figma:

[Ver prototipo en Figma](https://www.figma.com/proto/ezXKQmOE0fcqXfyuxxaKB5/Flujo---SoftWork?node-id=2019-1446&p=f&t=p0q6plJEoNqWkt6V-1&scaling=min-zoom&content-scaling=fixed&page-id=2009%3A8&starting-point-node-id=2019%3A1446&show-proto-sidebar=1)
