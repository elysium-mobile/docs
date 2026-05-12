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

#### 3.1.2.4. Searching Systems {#searching-systems}

#### 3.1.2.5. Navigation Systems {#navigation-systems}

### 3.1.3. Landing Page UI Design {#landing-page-ui-design}

#### 3.1.3.1. Landing Page Wireframe {#landing-page-wireframe}

#### 3.1.3.2. Landing Page Mock-up {#landing-page-mock-up}

### 3.1.4. Mobile Applications UX/UI Design {#mobile-applications-ux-ui-design}

#### 3.1.4.1. Mobile Applications Wireframes {#mobile-applications-wireframes}

#### 3.1.4.2. Mobile Applications Wireflow Diagrams {#mobile-applications-wireflow-diagrams}

#### 3.1.4.3. Mobile Applications Mock-ups {#mobile-applications-mock-ups}

#### 3.1.4.4. Mobile Applications User Flow Diagrams {#mobile-applications-user-flow-diagrams}

#### 3.1.4.5. Mobile Applications Prototyping {#mobile-applications-prototyping}
