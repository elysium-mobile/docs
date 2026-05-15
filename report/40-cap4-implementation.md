# Capítulo IV: Product Implementation & Validation {#capítulo-iv-product-implementation-and-validation}

## 4.1. Software Configuration Management {#software-configuration-management}

### 4.1.1. Software Development Environment Configuration {#software-development-environment-configuration}

### 4.1.2. Source Code Management {#source-code-management}

### 4.1.3. Source Code Style Guide & Conventions {#source-code-style-guide-and-conventions}

### 4.1.4. Software Deployment Configuration {#software-deployment-configuration}

## 4.2. Landing Page & Mobile Application Implementation {#landing-page-and-mobile-application-implementation}

### 4.2.1. Sprint 1 {#sprint-1}

#### 4.2.1.1. Sprint Planning 1 {#sprint-planning-1}

#### 4.2.1.2. Sprint Backlog 1 {#sprint-backlog-1}

#### 4.2.1.3. Development Evidence for Sprint Review {#development-evidence-sprint-1}

#### 4.2.1.4. Testing Suite Evidence for Sprint Review {#testing-suite-evidence-sprint-1}

Durante el Sprint 1 se realizaron principalmente pruebas manuales enfocadas en validar la correcta navegación, interacción y funcionamiento básico de las pantallas desarrolladas en el prototipo de la aplicación SoftWork. En esta etapa inicial no se implementaron pruebas automatizadas ni archivos `.feature` bajo metodología BDD, ya que el objetivo principal fue validar la experiencia de usuario (UX/UI) y los flujos esenciales del sistema.

Las validaciones se llevaron a cabo mediante revisiones funcionales en el prototipo desarrollado en Figma y pruebas de interacción realizadas por el equipo y usuarios entrevistados. Asimismo, se evaluaron aspectos relacionados con accesibilidad visual, comprensión de botones, navegación entre pantallas y percepción del “Modo Anónimo”.

Estas pruebas permitieron verificar el comportamiento esperado de los módulos iniciales para empleados y RRHH, incluyendo flujos de inicio de sesión, navegación en el foro, visualización de dashboards y envío de denuncias. Además, las entrevistas realizadas ayudaron a identificar oportunidades de mejora relacionadas con diseño visual, claridad de funciones y jerarquía de información.

A continuación, se resume el estado del testing al cierre del Sprint 1:

| Aspecto Evaluado | Resultado |
|:---|:---|
| Pruebas BDD automatizadas | No implementadas en esta etapa inicial del proyecto. |
| Pruebas manuales | Realizadas mediante validación de prototipos y entrevistas con usuarios. |
| Herramientas utilizadas | Android Studio, Figma, Google Meet, formularios de validación y pruebas de navegación manual. |
| Estado general del testing | Funcionalidades y experiencia de usuario validadas manualmente de forma satisfactoria. |

| Branch | Commit Message | Commit Message Body | Committed on (Date) |
|:---|:---|:---|:---|
| main | test: validaciones landing page | Se verificaron visualmente las validaciones de campos obligatorios y correos en formularios de login y registro. | 10/05/2026 |
| main | test: visual review de formulario de registro | Se realizaron pruebas funcionales del flujo de registro de nuevos usuarios en la plataforma. | 10/05/2026 |
| main | test: verificación de navegación landing | Se evaluó el correcto funcionamiento del menú de navegación y la responsividad en diferentes dispositivos. | 10/05/2026 |


#### 4.2.1.5. Execution Evidence for Sprint Review {#execution-evidence-sprint-1}

A continuación, se presentan las evidencias de ejecución correspondientes al cierre del Sprint. Estas capturas documentan la operatividad de los componentes desarrollados, validando la integración exitosa entre los servicios del Backend y la interfaz de la Aplicación Móvil. Las pruebas demuestran el cumplimiento de los criterios de aceptación para las funcionalidades de autenticación, gestión de anonimato y flujo de reportes en tiempo real.

**LANDING PAGE:**

![Login SoftWork](assets/images/Cap4/Lan1.jpg){width=50%}

Figura: Captura de la sección Hero del Landing Page — muestra CTA "Solicitar Demo", mockup móvil y disposición responsive validada durante el sprint.

![Login SoftWork](assets/images/Cap4/Lan2.jpg){width=50%}

Figura: Captura de sección de beneficios — estructura de contenido en dos columnas y ejemplo de publicación/foro para comprobación de jerarquía visual.

![Login SoftWork](assets/images/Cap4/Lan3.jpg){width=50%}

Figura: Captura del panel de métricas del Landing Page — ejemplos de widgets y visualización de indicadores clave usados para pruebas de usabilidad.

Esta sección compila las evidencias de funcionamiento de la plataforma SoftWork obtenidas durante el Sprint Review. Se exhiben los logros técnicos alcanzados tanto en el desarrollo de la arquitectura del backend como en la implementación del frontend móvil, asegurando la trazabilidad de las historias de usuario completadas durante este ciclo de desarrollo.

**MOBILE APP:**

![Login SoftWork](assets/images/Cap4/Mockup1.jpg){width=50%}

Figura: Pantalla móvil — flujo de inicio de sesión y validación de campos; evidencia de integración visual entre wireframe y build.

![Login SoftWork](assets/images/Cap4/Mockup2.jpg){width=50%}

Figura: Pantalla móvil — perfil / hero del usuario con controles de privacidad y toggles, revisada para accesibilidad y espaciamiento.

![Login SoftWork](assets/images/Cap4/Mockup3.jpg){width=50%}

Figura: Pantalla móvil — vista del foro y publicación anónima; se verificó legibilidad de etiquetas y chips de estado.

![Login SoftWork](assets/images/Cap4/Mockup4.jpg){width=50%}

Figura: Pantalla móvil — flujo de reporte de incidente cifrado y pantalla de confirmación, evidenciando el comportamiento esperado.

#### 4.2.1.6. Services Documentation Evidence for Sprint Review {#services-documentation-evidence-sprint-1}

#### 4.2.1.7. Software Deployment Evidence for Sprint Review {#software-deployment-evidence-sprint-1}

#### 4.2.1.8. Team Collaboration Insights during Sprint {#team-collaboration-insights-sprint-1}
En esta sección se describen los mecanismos de coordinación y las dinámicas de trabajo adoptadas por el equipo durante el primer Sprint. El análisis se centra en cómo la comunicación constante y el uso de herramientas colaborativas permitieron sincronizar el desarrollo del backend con el diseño de la interfaz móvil, asegurando que los bloqueos técnicos se resolvieran de manera ágil para cumplir con los objetivos establecidos.

Se detalla la interfaz orientada al colaborador, diseñada bajo un enfoque de 'mobile-first' para garantizar accesibilidad y comodidad. La aplicación móvil integra las funcionalidades clave de comunicación, como el foro de discusión, el buzón de denuncias cifradas y el control de identidad protegida, facilitando la participación constante desde cualquier lugar.

**REPORT:**

![Login SoftWork](assets/images/Cap4/Report.jpg)

**MOBILE APP:**

![Login SoftWork](assets/images/Cap4/MobileApp.jpg)

**LANDING PAGE:**

![Login SoftWork](assets/images/Cap4/LandingPaGE.jpg)


## 4.3. Validation Interviews {#validation-interviews}

### 4.3.1. Diseño de Entrevistas {#diseno-entrevistas-validacion}
Para el diseño de entrevistas se han definido dos bloques de preguntas diferenciadas por segmento: empleados y área de Recursos Humanos (RRHH).

Las preguntas fueron diseñadas con el objetivo de evaluar la experiencia de uso, accesibilidad y percepción visual de la plataforma, considerando tanto a los trabajadores que interactúan con la aplicación como a los profesionales encargados de gestionar la información organizacional.

Se aplican buenas prácticas como:

- Uso de preguntas abiertas para obtener respuestas más detalladas y auténticas.
- Lenguaje claro, cercano y fácil de comprender para generar confianza en los entrevistados.
- Estructura flexible que permita profundizar en opiniones o experiencias relevantes durante la entrevista.
- Enfoque centrado en experiencias reales de navegación, interacción y percepción del sistema.
- Validación de aspectos visuales, funcionales y emocionales relacionados con el uso de la plataforma.

El objetivo principal es recolectar información clave que permita mejorar la experiencia de usuario (UX) y la interfaz visual (UI) de la aplicación, considerando:

- Facilidad de uso y navegación dentro de la plataforma.
- Claridad de botones, íconos y herramientas disponibles.
- Percepción de confianza y seguridad al utilizar funciones como el “Modo Anónimo”.
- Nivel de satisfacción con el diseño visual y la organización de la información.
- Necesidades, frustraciones y oportunidades de mejora detectadas por los usuarios.
- Utilidad de dashboards, métricas y gráficos para la toma de decisiones en RRHH.
- Preferencias relacionadas con interactividad, notificaciones y estilo visual moderno.
### Preguntas para Segmento 1: Empleados

**Objetivo:** Validar si el trabajador se siente seguro usando la app y si la interfaz reduce la fricción para reportar malestares.

1. ¿Te pareció fácil de usar la aplicación desde el primer momento?

2. ¿Pudiste encontrar rápido las opciones para reportar un problema o escribir en el foro?

3. ¿Los íconos y botones te parecieron claros o hubo alguno que no entendiste para qué servía?

4. ¿El diseño del “Modo Anónimo” te da confianza o te genera alguna confusión al navegar?

5. ¿Qué es lo que más te gustó de la apariencia visual de la aplicación?

6. ¿Hubo algún color, botón o sección que te pareció feo, incómodo o que estaba de más?

7. ¿Te gustaría que la app tenga más animaciones o efectos visuales cuando envías un mensaje o recibes una respuesta?

8. ¿Qué mejorarías para que usar la app y ver tus reportes sea más sencillo y rápido?

9. ¿Sientes que el diseño de esta página está hecho para personas jóvenes y modernas como tú?

10. ¿Cambiarías algo del diseño para que se sienta más como una red social o app que te guste usar a diario?


### Preguntas para Segmento 2: Recursos Humanos

**Objetivo:** Validar si las herramientas de análisis facilitan la toma de decisiones y si la plataforma se integra bien a su flujo de trabajo.

1. ¿Consideras que el diseño general del dashboard transmite profesionalismo y la seriedad necesaria para manejar datos de la empresa?

2. ¿Pudiste encontrar fácilmente las métricas de clima laboral y el resumen de los indicadores?

3. ¿Los botones para generar reportes o emitir anuncios están claramente etiquetados y son fáciles de identificar?

4. ¿La experiencia de navegar entre los gráficos y el foro de empleados fue fluida o hubo momentos de confusión?

5. ¿Qué elementos visuales o gráficos te parecen más útiles para tu trabajo diario?

6. ¿Notas algún elemento visual en el panel que esté de más o que te distraiga de tus tareas principales?

7. ¿Qué mejorarías en el diseño visual (colores, tipos de letra o posición de los cuadros) para leer mejor los datos?

8. ¿Te gustaría ver más respuestas visuales interactivas, como notificaciones en tiempo real o alertas de colores cuando un indicador baja?

9. ¿La plataforma te parece intuitiva y fácil de manejar desde el punto de vista de un profesional de RRHH?

10. ¿Hay algún cambio en la disposición de las herramientas que te gustaría ver para facilitar tu labor de gestión?

## Consideraciones clave

- Garantizar un entorno de confianza y confidencialidad durante las entrevistas para obtener respuestas sinceras y naturales.
- Permitir la profundización en experiencias, comentarios o situaciones relevantes mencionadas por los participantes.
- Identificar patrones de comportamiento, opiniones y necesidades compartidas entre empleados y el área de RRHH.
- Validar si la experiencia de uso, el diseño visual y las funcionalidades propuestas realmente responden al problema planteado en el proyecto.
- Detectar dificultades relacionadas con navegación, comprensión de herramientas y percepción de seguridad dentro de la plataforma.
- Evaluar el nivel de aceptación de elementos interactivos, dashboards y funciones de comunicación interna.


## Insight esperado

Se busca identificar la brecha existente entre:

- La percepción del empleado respecto a la facilidad, confianza y utilidad de la plataforma para expresar problemas o necesidades.
- La capacidad del área de RRHH para interpretar la información obtenida y brindar respuestas efectivas mediante herramientas visuales y analíticas.

Esto permitirá diseñar una solución digital más alineada con las necesidades reales de los usuarios, mejorando tanto la experiencia de interacción como la eficiencia en la gestión organizacional.


### 4.3.2. Registro de Entrevistas {#registro-entrevistas-validacion}

### Segmento Objetivo 1: Empleados

| Campo | Detalle |
|:---|:---|
| Entrevista 1 | Empleados jóvenes de 18 - 25 años |
| Entrevistado | Alexandro Bravo |
| Edad | 20 años |
| Cargo | Empleado |
| Inicio de entrevista | 00:02 |
| Enlace de entrevista | [Entrevista en video](https://n9.cl/py3txj) |
| Foto captura | Captura |
| Facilidad de uso de la aplicación | Le pareció intuitiva y fácil de usar desde el inicio. Comentó que el diseño le recordó a otras plataformas que ya había utilizado anteriormente. |
| Navegación y acceso a funciones | Encontró rápidamente las opciones para reportar problemas y participar en el foro. Consideró que la estructura de la aplicación está bien organizada. |
| Claridad de íconos y botones | Indicó que entendió correctamente la función de los botones e íconos y que no tuvo dificultades para comprender la navegación. |
| Percepción del modo anónimo/nocturno | Mencionó que el diseño le genera confianza y que le agrada especialmente el modo nocturno de la aplicación. |
| Apariencia visual de la aplicación | Destacó el equilibrio entre los colores blanco y azul. Aunque no suele preferir colores pasteles, consideró que la combinación visual está bien lograda. |
| Elementos visuales incómodos o innecesarios | No identificó elementos molestos o fuera de lugar. Comentó que el contraste de colores y los tonos celestes le parecieron agradables. |
| Opinión sobre animaciones y efectos visuales | Consideró que el diseño actual está bien, aunque sugirió agregar una confirmación visual al momento de enviar mensajes. |
| Sugerencias de mejora | Sugirió implementar gráficos más visuales dentro del dashboard para mejorar la visualización de reportes y datos. |
| Percepción del diseño para jóvenes | Considera que el diseño sí está orientado a personas jóvenes y modernas, manteniendo además un equilibrio para usuarios con menos experiencia digital. |
| Cambios para asemejarse a una red social | Indicó que, por el momento, no cambiaría nada del diseño ya que le pareció adecuado y funcional. |


| Campo | Detalle |
|:---|:---|
| Entrevista 2 | Empleados jóvenes de 18 - 25 años |
| Entrevistado | Pedro Omar Lecca |
| Edad | 20 años |
| Cargo | Empleado |
| Inicio de entrevista | 00:02 |
| Enlace de entrevista | [Entrevista en video](https://n9.cl/s2of0) |
| Foto captura | Captura |
| Facilidad de uso de la aplicación | Consideró que la aplicación es fácil de usar desde el inicio. Destacó que las funciones principales como inicio de sesión, menú, foro, perfil y reportes son visibles y fáciles de identificar. |
| Navegación y acceso a funciones | Encontró rápidamente las opciones para reportar problemas y publicar en el foro. Comentó que la estructura está bien organizada y que las categorías de denuncia ayudan a la navegación. |
| Claridad de íconos y botones | Indicó que la mayoría de botones e íconos son claros, especialmente funciones como publicar, enviar denuncia cifrada, generar reporte y editar perfil. Sugirió que algunos íconos podrían ser más grandes o incluir etiquetas visibles. |
| Percepción del modo anónimo | El diseño del modo anónimo le generó confianza debido a que la opción aparece visible y se explica el cifrado de extremo a extremo. Sin embargo, mencionó que el interruptor para desactivar el anonimato podría generar dudas sobre el manejo de la identidad del usuario. |
| Apariencia visual de la aplicación | Destacó el diseño limpio, minimalista y moderno. Consideró que la combinación de colores azul, blanco y celeste transmite tranquilidad y confianza. También resaltó la buena organización visual del foro y el menú principal. |
| Opinión sobre animaciones y efectos visuales | Le gustaría que la aplicación incluya animaciones simples o notificaciones visuales al publicar contenido o recibir respuestas, siempre manteniendo la seriedad de la plataforma. |
| Sugerencias de mejora | Sugirió agregar una sección llamada “Mis reportes” para visualizar el estado de cada denuncia o caso enviado. También recomendó incluir confirmaciones más claras después de realizar acciones importantes. |
| Percepción del diseño para jóvenes | Considera que el diseño está orientado a personas jóvenes y modernas. Comentó que los botones redondeados, las tarjetas y la paleta de colores hacen que la experiencia sea familiar y fácil de usar. |
| Cambios para asemejarse a una red social | Propuso hacer el foro más dinámico mediante reacciones visibles, comentarios destacados, tendencias o temas populares y mayor personalización del perfil para generar una experiencia más interactiva. |

### Segmento Objetivo 2: Recursos Humanos

| Campo | Detalle |
|:---|:---|
| Entrevista 1 | Empleados jóvenes entre 20-30 años |
| Entrevistado | Fatima Belen |
| Edad | 20 años |
| Cargo | Recursos Humanos |
| Inicio de entrevista | 00:03 |
| Enlace de entrevista |[Entrevista en video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202114548_upc_edu_pe/IQBGQ2PW6ConT6qEH9Oxn3KgAUWQNRpqavreCHrQ2wWBKy4?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=zTvTDu)|
| Foto captura | Captura |
| Facilidad de uso de la aplicación | La empleada de Recursos Humanos indicó que la aplicación le pareció intuitiva y fácil de usar desde el primer momento. Comentó que la experiencia de navegación es familiar y no requiere una curva de aprendizaje elevada. |
| Navegación y acceso a funciones | Señaló que pudo encontrar sin dificultad las funciones principales como el reporte de incidencias y el acceso al foro. Considera que la estructura general está bien organizada y orientada a la eficiencia. |
| Claridad de íconos y botones | Mencionó que los íconos y botones son claros y comprensibles, lo que facilita la interacción sin necesidad de asistencia adicional. |
| Percepción del modo anónimo/nocturno | Indicó que el diseño transmite confianza, especialmente por el modo nocturno, adecuado para uso prolongado. |
| Apariencia visual de la aplicación | Destacó que los colores blanco y azul transmiten profesionalismo y calma, adecuados para un entorno institucional. |
| Elementos visuales incómodos o innecesarios | No identificó elementos molestos; percibe una estética limpia y ordenada. |
| Opinión sobre animaciones y efectos visuales | Consideró adecuadas las animaciones, pero sugirió agregar confirmaciones visuales al enviar mensajes o reportes. |
| Sugerencias de mejora | Propuso incluir gráficos más dinámicos en el dashboard para mejorar la visualización de reportes y métricas. |
| Percepción del diseño para jóvenes | Considera que es accesible para jóvenes, pero también usable para personas con menor experiencia digital. |
| Cambios para asemejarse a una red social | No haría cambios hacia un estilo más social; lo considera funcional y adecuado para entorno institucional. |

| Campo | Detalle |
|:---|:---|
| Entrevista 1 | Empleados jóvenes entre 20-30 años |
| Entrevistado | Jorge Chumpitaz |
| Edad | 26 años |
| Cargo | Recursos Humanos |
| Inicio de entrevista | 00:02 |
| Enlace de entrevista |[Entrevista en video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202114548_upc_edu_pe/IQC0L3CLVLaKSoR12-KjrTuSAcA8O7xHnM9fEFeiiDaTn2c?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=bEMPQ6)|
| Foto captura | Captura |
| Facilidad de uso de la aplicación | El empleado del área de Recursos Humanos comentó que la aplicación le resultó práctica y fácil de comprender. Indicó que las funciones principales son accesibles y no generan confusión durante el uso. |
| Navegación y acceso a funciones | Señaló que pudo desplazarse entre las distintas secciones de manera rápida y ordenada. Destacó que el acceso a reportes y publicaciones está bien distribuido dentro de la interfaz. |
| Claridad de íconos y botones | Mencionó que los botones e íconos son fáciles de identificar y que las etiquetas ayudan a entender correctamente cada funcionalidad. |
| Percepción del modo anónimo/nocturno | Indicó que el modo nocturno le parece cómodo visualmente y que la opción de anonimato puede incentivar a los usuarios a reportar situaciones con mayor confianza. |
| Apariencia visual de la aplicación | Consideró que el diseño visual transmite formalidad y modernidad. Comentó que la combinación de colores genera una sensación profesional adecuada para el entorno corporativo. |
| Elementos visuales incómodos o innecesarios | No observó elementos innecesarios dentro de la aplicación. Añadió que el diseño mantiene un equilibrio visual agradable y organizado. |
| Opinión sobre animaciones y efectos visuales | Opinó que las animaciones son discretas y ayudan a mejorar la experiencia del usuario sin distraer demasiado durante la navegación. |
| Sugerencias de mejora | Sugirió agregar indicadores visuales o estadísticas resumidas para facilitar el seguimiento de incidencias y actividades dentro de la plataforma. |
| Percepción del diseño para jóvenes | Considera que la aplicación tiene un diseño moderno orientado a jóvenes, aunque también puede ser utilizada sin dificultad por trabajadores de distintas edades. |
| Cambios para asemejarse a una red social | Comentó que no considera necesario implementar demasiados elementos similares a redes sociales, ya que el enfoque profesional de la aplicación está bien logrado. |


| Campo | Detalle |
|:---|:---|
| Entrevista 1 | Empleados jóvenes entre 20-30 años |
| Entrevistado | Elizabeth Apaza |
| Edad | 21 años |
| Cargo | Recursos Humanos |
| Inicio de entrevista | 00:03 |
| Enlace de entrevista |[Entrevista en video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202114548_upc_edu_pe/IQAagUM7ABWmRryraDDBifv9AR6IM6ssZkOX7ts0lonG8ac?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=0dzNDd)|
| Foto captura | Captura |
| Facilidad de uso de la aplicación | La trabajadora del área de Recursos Humanos mencionó que la aplicación le pareció bastante accesible y sencilla de entender. Comentó que la interfaz permite adaptarse rápidamente incluso sin experiencia previa en plataformas similares. |
| Navegación y acceso a funciones | Indicó que las secciones principales están bien ubicadas y que pudo acceder fácilmente a las herramientas de reportes y comunicación dentro de la aplicación. |
| Claridad de íconos y botones | Señaló que los íconos y botones son claros y mantienen una buena distribución visual, facilitando la interacción del usuario durante la navegación. |
| Percepción del modo anónimo/nocturno | Comentó que el modo nocturno le resultó cómodo para la vista y que la función de anonimato puede generar mayor seguridad y privacidad para los colaboradores. |
| Apariencia visual de la aplicación | Destacó que el diseño visual proyecta modernidad y orden. Además, consideró que los colores utilizados transmiten tranquilidad y profesionalismo. |
| Elementos visuales incómodos o innecesarios | No identificó elementos visuales que interfieran con la experiencia de uso. Consideró que la aplicación mantiene una apariencia limpia y equilibrada. |
| Opinión sobre animaciones y efectos visuales | Indicó que los efectos visuales son adecuados y ayudan a que la aplicación se vea más dinámica, aunque recomendó agregar pequeñas transiciones al cambiar entre secciones. |
| Sugerencias de mejora | Sugirió implementar filtros dentro de los reportes y añadir gráficos estadísticos más detallados para mejorar el análisis de información. |
| Percepción del diseño para jóvenes | Considera que el diseño logra conectar bien con usuarios jóvenes debido a su apariencia moderna, pero mantiene una estructura comprensible para cualquier trabajador. |
| Cambios para asemejarse a una red social | Comentó que el diseño actual ya resulta atractivo y funcional, por lo que no considera necesario incorporar demasiados elementos similares a redes sociales. |

### 4.3.3. Evaluaciones según heurísticas {#evaluaciones-heuristicas}
