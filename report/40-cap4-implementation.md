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
|:---|:---|
| main | test: validaciones landing page | Se verificaron visualmente las validaciones de campos obligatorios y correos en formularios de login y registro. | 10/05/2026 |
| main | test: visual review de formulario de registro | Se realizaron pruebas funcionales del flujo de registro de nuevos usuarios en la plataforma. | 10/05/2026 |
| main | test: verificación de navegación landing | Se evaluó el correcto funcionamiento del menú de navegación y la responsividad en diferentes dispositivos. | 10/05/2026 |


#### 4.2.1.5. Execution Evidence for Sprint Review {#execution-evidence-sprint-1}

A continuación, se presentan las evidencias de ejecución correspondientes al cierre del Sprint. Estas capturas documentan la operatividad de los componentes desarrollados, validando la integración exitosa entre los servicios del Backend y la interfaz de la Aplicación Móvil. Las pruebas demuestran el cumplimiento de los criterios de aceptación para las funcionalidades de autenticación, gestión de anonimato y flujo de reportes en tiempo real.

**LANDING PAGE:**
![Login SoftWork](assets/images/Cap4/Lan1.jpg)
![Login SoftWork](assets/images/Cap4/Lan2.jpg)
![Login SoftWork](assets/images/Cap4/Lan3.jpg)

Esta sección compila las evidencias de funcionamiento de la plataforma SoftWork obtenidas durante el Sprint Review. Se exhiben los logros técnicos alcanzados tanto en el desarrollo de la arquitectura del backend como en la implementación del frontend móvil, asegurando la trazabilidad de las historias de usuario completadas durante este ciclo de desarrollo.

**MOBILE APP:**

![Login SoftWork](assets/images/Cap4/Mockup1.jpg)
![Login SoftWork](assets/images/Cap4/Mockup2.jpg)
![Login SoftWork](assets/images/Cap4/Mockup3.jpg)
![Login SoftWork](assets/images/Cap4/Mockup4.jpg)

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
| Enlace de entrevista |https://n9.cl/py3txj|
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
| Enlace de entrevista |https://n9.cl/s2of0 |
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
| Facilidad de uso de la aplicación | La empleada de Recursos Humanos indicó que la aplicación le pareció intuitiva y fácil de usar desde el primer momento.<br><br>Comentó que la experiencia de navegación es familiar y no requiere una curva de aprendizaje elevada. |
| Navegación y acceso a funciones | Señaló que pudo encontrar sin dificultad las funciones principales como el reporte de incidencias y el acceso al foro.<br><br>Considera que la estructura general está bien organizada y orientada a la eficiencia. |
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

### 4.3.3. Evaluaciones según heurísticas {#evaluaciones-heuristicas}
### UX Heuristics & Principles Evaluation

### Evaluación recibida

- **CARRERA:** Ingeniería de Software
- **CURSO:** 1acc0238 Aplicaciones para dispositivos móviles
- **SECCIÓN:** Todos
- **AUDITOR:** Grupo 3
- **CLIENTE(S):** Grupo 2

---
## SITE o APP A EVALUAR:

SoftWork    

## 1. Tareas a Evaluar 
El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas tanto en la Landing Page como en la aplicación móvil (flujos de Empleado y RRHH):

1. Identificación de la propuesta de valor.
2. Registro de un usuario nuevo con validación de correo corporativo.
3. Inicio de sesión seguro.
4. Selección de planes de membresía y registro de método de pago.
5. Configuración de preferencias de privacidad en el perfil.
6. Interacción comunitaria: lectura, publicación y votación en foros anónimos.
7. Cumplimentación de encuestas diarias de clima laboral y bienestar.
8. Gestión y visualización de reportes de clima por equipos (Rol RRHH).
9. Revisión del centro de notificaciones y alertas.

---

## 2. Escala de Severidad
Los problemas detectados se puntúan bajo la siguiente métrica:

* **1. Problema superficial:** Ocurre con muy poca frecuencia; no necesita ser arreglado a menos que exista disponibilidad de tiempo.
* **2. Problema menor:** Se le debería asignar una prioridad baja de cara al siguiente release.
* **3. Problema mayor:** Ocurre frecuentemente; es importante que sean corregidos con prioridad alta.
* **4. Problema muy grave:** Impide al usuario continuar con el uso de la herramienta; imperativo corregir antes del lanzamiento.

---

## 3. Tabla Resumen

| #   | Problema                                                | Severidad | Heurística/Principio Violada(o)                      |
|:---|:---|:---|:---|
| 1   | Desorden ilógico en el eje Y del gráfico de reportes    |   **4** | Usability: Prevención de errores / Consistencia        |
| 2   | Enlaces inoperativos en la Landing Page                 |   **3** | Information Architecture: Is it usable?                |
| 3   | Inconsistencia de idioma en formulario de tarjeta       |   **1** | Usability: Consistencia y estándares                   |
| 4   | Botón principal de "Iniciar sesión" en web sin ruta     |   **4** | Usability: Control y libertad del usuario              |
| 5   | Formato de fecha extranjero en el dashboard de RRHH     |   **2** | Usability: Relación entre el sistema y el mundo real   |
| 6   | Contraste insuficiente en enlaces de login/registro     |   **3** | Inclusive Design: Diseño accesible                     |
| 7   | Pantallas de éxito carentes de contexto o resumen       |   **2** | Usability: Visibilidad del estado del sistema          |
| 8   | Ausencia de fechas explícitas en notificaciones de pago |   **2** | Usability: Reconocimiento antes que recuerdo           |
| 9   | Semántica de colores confusa en tarjetas del dashboard  |   **3** | Usability: Consistencia y estándares                   |
| 10  | Estados vacíos sin orientación a la acción              |   **2** | Usability: Ayudar a los usuarios a reconocer errores   |
| 11  | Ambigüedad visual en el estado por defecto del dropdown |   **2** | Usability: Estética y diseño minimalista               |
| 12  | Duplicidad de acceso a "Métodos de pago" para RRHH      |   **1** | Information Architecture: Is it findable?              |
| 13  | Botón flotante en el foro sin etiqueta descriptiva      |   **2** | Usability: Reconocimiento antes que recuerdo           |
| 14  | Falta de botón de cancelación en el modal de encuesta   |   **3** | Usability: Control y libertad del usuario              |

---

## 4. Descripción de Problemas

### **PROBLEMA #1: Desorden ilógico en el eje Y del gráfico de reportes**
* **Severidad:** 4
* **Heurística violada:** Usabilidad - Prevención de errores / Consistencia
* **Problema:** En la pantalla de "Reportes" (vista RRHH), el gráfico de líneas presenta un eje Y completamente desordenado numéricamente ("10, 0, 80, 50, 20, 10"). Esto hace que la visualización de datos de clima laboral sea totalmente inútil, impidiendo al analista interpretar la evolución del equipo.
* **Recomendación:** Corregir la lógica de renderizado del componente del gráfico para que el eje Y mantenga un orden ascendente estricto (ej. 0, 20, 40, 60, 80, 100).

### **PROBLEMA #2: Enlaces inoperativos (anclas `#`) en la Landing Page**
* **Severidad:** 3
* **Heurística violada:** Arquitectura de Información - ¿Es usable?
* **Problema:** En el *footer* y en la navegación principal de la página web promocional, varios enlaces clave (como "Hablar con ventas", "Integraciones" y todas las políticas legales) apuntan a un ancla vacía (`#`). El usuario hace clic esperando información vital y no ocurre ninguna acción.
* **Recomendación:** Deshabilitar y ocultar estos enlaces si las páginas aún no existen en esta fase del proyecto, o enlazar a un modal de "Próximamente" para no romper el flujo de navegación.

### **PROBLEMA #3: Inconsistencia de idioma en formulario de tarjeta**
* **Severidad:** 1
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** En la pantalla "Agregar método de pago" de la aplicación móvil, los *placeholders* de los campos de texto están en inglés ("Name on the card", "Card number", "Month / Year"), a pesar de que toda la interfaz y los títulos de la app están en español.
* **Recomendación:** Traducir los atributos de marcador de posición (placeholders) al español ("Nombre en la tarjeta", "Número de tarjeta", "Mes / Año") para mantener la cohesión del idioma.

### **PROBLEMA #4: Botón principal de "Iniciar sesión" en web sin ruta**
* **Severidad:** 4
* **Heurística violada:** Usabilidad - Control y libertad del usuario
* **Problema:** En la cabecera de la *landing page*, el botón primario de "Iniciar sesión" apunta a `#`. Esto bloquea completamente a los usuarios existentes que intentan ingresar a la plataforma web desde la página principal.
* **Recomendación:** Enlazar inmediatamente el botón al subdominio de la aplicación (ej. `app.softwork.com/login`) o a la vista web de autenticación.

### **PROBLEMA #5: Formato de fecha extranjero en el dashboard de RRHH**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Relación entre el sistema y el mundo real
* **Problema:** En el eje X del gráfico de reportes, las fechas están formateadas en el estándar estadounidense "Mes/Día" (ej. "3/19", "3/20"). Para usuarios en Latinoamérica o España, esto resulta antinatural y puede causar confusión temporal.
* **Recomendación:** Adaptar el formato de fecha a la configuración regional del usuario, utilizando el estándar "Día/Mes" (ej. "19/03", "20/03").

### **PROBLEMA #6: Contraste insuficiente en enlaces de login/registro**
* **Severidad:** 3
* **Heurística violada:** Diseño Inclusivo - Diseño accesible
* **Problema:** En las pantallas de autenticación de la app móvil, textos como "¿Olvidaste tu contraseña?" y "Regístrate" utilizan un tono de azul claro sobre fondo blanco que no alcanza el ratio mínimo de contraste de la WCAG (4.5:1). Esto dificulta la lectura para personas con baja visión.
* **Recomendación:** Oscurecer el código hexadecimal del color azul en estos enlaces de texto para cumplir con los estándares de accesibilidad visual.

### **PROBLEMA #7: Pantallas de éxito carentes de contexto o resumen**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Visibilidad del estado del sistema
* **Problema:** Tras realizar una compra o registrarse, la app muestra una pantalla blanca dominada casi por completo por un *check* gigante y el texto "Membresía adquirida" o "Usuario registrado". No se ofrece un recibo rápido, el correo registrado, ni el tipo de plan comprado, lo que genera dudas sobre si la transacción fue correcta.
* **Recomendación:** Incluir una pequeña tarjeta de resumen debajo del check (ej. "Plan Pro - S/. 99 cobrados a tu tarjeta terminada en 4521") antes del botón de "Menú inicial".

### **PROBLEMA #8: Ausencia de fechas explícitas en notificaciones de pago**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Reconocimiento antes que recuerdo
* **Problema:** En la pestaña de Notificaciones, la alerta de pago indica "Tu plan vencerá pronto". Al no especificar la fecha exacta de vencimiento en la misma tarjeta, obliga al usuario a recordar la fecha de facturación o a hacer clics innecesarios para averiguarlo.
* **Recomendación:** Dinamizar el texto para que incluya la fecha concreta: "Tu plan vencerá el 27 de Mayo. Actualiza tu método de pago".

### **PROBLEMA #9: Semántica de colores confusa en tarjetas del dashboard**
* **Severidad:** 3
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** En la pantalla de Reportes (vista RRHH), las tarjetas superiores utilizan colores pastel de fondo (celeste, verde, rojo, morado) que parecen ser meramente decorativos. Sin embargo, el rojo en "Reportes en foro: 1" transmite una alerta de error grave instintivamente, mientras que el verde en "Integrantes: 5" no representa un estado de éxito real.
* **Recomendación:** Utilizar un esquema de colores neutro (blanco/gris) para los contenedores y reservar los colores semánticos (rojo, amarillo, verde) únicamente para los iconos o indicadores numéricos que representen cambios positivos o críticos.

### **PROBLEMA #10: Estados vacíos sin orientación a la acción**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de errores
* **Problema:** En la pantalla "Historial de pagos", si no hay registros, solo se lee el texto "No ha realizado ningún pago" flotando en el espacio en blanco. No hay ilustración, ni un botón que sugiera la siguiente acción lógica (como "Adquirir un plan").
* **Recomendación:** Diseñar estados vacíos amigables que incluyan un gráfico ligero y un Call to Action (CTA) que dirija al usuario a resolver esa "ausencia" de datos.

### **PROBLEMA #11: Ambigüedad visual en el estado por defecto del dropdown**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Estética y diseño minimalista
* **Problema:** En la pantalla inicial de "Reportes", el selector de equipos dice "Ninguno" por defecto, dejando casi el 90% de la pantalla en un blanco absoluto sin instrucciones. Da la sensación de ser un error de carga o una pantalla inacabada.
* **Recomendación:** Cambiar el texto "Ninguno" por un placeholder instruccional como "Selecciona un equipo" y colocar un gráfico tenue de fondo con el texto "Elige un equipo de la lista para visualizar sus métricas de clima".

### **PROBLEMA #12: Duplicidad de acceso a "Métodos de pago" para RRHH**
* **Severidad:** 1
* **Heurística violada:** Arquitectura de Información - ¿Es fácil de encontrar?
* **Problema:** Para los perfiles de pago, la opción para gestionar o ver la facturación parece estar distribuida tanto en el "Perfil" del usuario como directamente expuesta en el "Menú inicial" mediante botones grandes. Esto infla la carga cognitiva sin necesidad.
* **Recomendación:** Consolidar todo lo relacionado a facturación y pagos bajo una única ruta (preferiblemente dentro de "Mi Perfil" o "Configuración") para limpiar el dashboard principal.

### **PROBLEMA #13: Botón flotante en el foro sin etiqueta descriptiva**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Reconocimiento antes que recuerdo
* **Problema:** En la pantalla del Foro, hay un Floating Action Button (FAB) en la esquina inferior derecha con un simple ícono de suma (+). Aunque es un patrón común, en contextos laborales complejos, un ícono solitario puede dejar dudas sobre si es para "Crear post", "Invitar persona" o "Crear encuesta".
* **Recomendación:** Al hacer scroll hacia arriba, expandir momentáneamente el FAB para mostrar el texto "Nueva publicación" junto al ícono (+), asegurando la claridad de la acción.

### **PROBLEMA #14: Falta de botón de cancelación en el modal de encuesta**
* **Severidad:** 3
* **Heurística violada:** Usabilidad - Control y libertad del usuario
* **Problema:** Una vez que el usuario ingresa a la pantalla de "Encuesta" (¿Cómo te sientes hoy?), no existe una "X" visible o un botón de "Cancelar" claro en la parte superior. El usuario podría sentirse atrapado y obligado a enviar la encuesta para poder regresar al menú.
* **Recomendación:** Añadir un ícono de "X" o una flecha de retroceso explícita en la esquina superior izquierda de la vista de la encuesta para garantizar una salida segura sin enviar datos.

### Evaluación enviada

- **CARRERA:** Ingeniería de Software
- **CURSO:** 1acc0238 Aplicaciones para dispositivos móviles
- **SECCIÓN:** 3667
- **PROFESORES:** Todos
- **AUDITOR:** Grupo 2
- **CLIENTE(S):** Grupo 4

---
## SITE o APP A EVALUAR:

Spitly

## 1. Tareas a Evaluar 
El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas tanto en la Landing Page como en la aplicación móvil:

1. Identificación de la propuesta de valor y misión.
2. Navegación por el catálogo de servicios y funcionamiento por roles.
3. Comparación y selección de planes de pago.
4. Registro de un usuario nuevo e inicio de sesión.
5. Creación de un "Hogar" (Household) y unión mediante ID.
6. Gestión de miembros de la comunidad.
7. Registro de contribuciones económicas y visualización de gastos.
8. Seguimiento del cumplimiento de metas grupales.

---

2. Escala de Severidad
Los problemas detectados se puntúan bajo la siguiente métrica:

* **1. Problema superficial:** Ocurre con muy poca frecuencia; no necesita ser arreglado a menos que exista disponibilidad de tiempo.
* **2. Problema menor:** Se le debería asignar una prioridad baja de cara al siguiente release.
* **3. Problema mayor:** Ocurre frecuentemente; es importante que sean corregidos con prioridad alta.
* **4. Problema muy grave:** Impide al usuario continuar con el uso de la herramienta; imperativo corregir antes del lanzamiento.

---

## 3. Tabla Resumen

| # | Problema | Severidad | Heurística/Principio Violada(o) |
|:---|:---|:---|:---|
| 1   | Sección de testimonios sin contenido visible              |   **4**   | Information Architecture: Is it usable?                |
| 2   | Inconsistencia de idioma (Inglés/Español)                 |   **1**   | Usability: Consistencia y estándares                   |
| 3   | Duplicidad de encabezados de sección                      |   **2**   | Usability: Consistencia y estándares                   |
| 4   | Superposición de texto sobre mapa interactivo             |   **2**   | Inclusive Design: Proporciona experiencias comparables |
| 5   | Falta de indicadores de campos obligatorios               |   **2**   | Usability: Prevención de errores                       |
| 6   | Iconos de redes sociales sin etiquetas descriptivas       |   **3**   | Inclusive Design: Diseño accesible                     |
| 7   | Ambigüedad visual en el toggle de ahorro anual            |   **2**   | Information Architecture: Is it findable?              |
| 8   | Contraste insuficiente en selector de rol inactivo        |   **2**   | Usability: Visibilidad del estado del sistema          |
| 9   | Inconsistencia monetaria (S/ frente a $)                  |   **3**   | Usability: Consistencia y estándares                   |
| 10  | Menú de navegación inferior (Tab Bar) volátil             |   **4**   | Usability: Consistencia y estándares                   |
| 11  | Componente de fecha con lógica de botones inusual         |   **3**   | Usability: Libertad y control del usuario              |
| 12  | Variación de etiquetas de retroceso ("Back" vs "Go back") |   **1**   | Usability: Consistencia y estándares                   |
| 13  | Botones de sistema incrustados dentro de inputs de texto  |   **2**   | Usability: Estética y diseño minimalista               |
| 14  | Contraste crítico de accesibilidad en el Login            |   **3**   | Inclusive Design: Proporciona experiencias comparables |

---

## 4. Descripción de Problemas

### **PROBLEMA #1: Sección de testimonios sin contenido visible**
* **Severidad:** 4 
* **Heurística violada:** Arquitectura de Información - ¿Es usable? 
* **Problema:** En la landing page, el menú de navegación incluye el enlace "Opiniones", pero al dirigirse a dicha sección, solo se muestra el título sin ningún testimonio o reseña de usuario. Esto genera una percepción de producto incompleto y resta credibilidad a la marca. 
* **Recomendación:** Integrar al menos tres testimonios reales con fotografía y nombre, o en su defecto, ocultar la sección y el acceso desde el menú hasta que se cuente con contenido validado.

### **PROBLEMA #2: Inconsistencia de idioma (Inglés/Español)**
* **Severidad:** 1
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** Se detectan elementos en inglés dentro de una interfaz configurada en español. Específicamente, los placeholders de los videos ("VIDEO ABOUT THE PRODUCT") y etiquetas de navegación móvil ("Back") rompen la armonía idiomática del sitio.
* **Recomendación:** Traducir todos los recursos gráficos y etiquetas de navegación al español para mantener la consistencia en la experiencia del usuario local.

### **PROBLEMA #3: Duplicidad de encabezados de sección**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** El título "Nuestros Servicios" aparece repetido en dos secciones consecutivas de la landing page. Esto puede confundir al usuario sobre la jerarquía de la información y hace que la navegación se sienta redundante.
* **Recomendación:** Unificar ambas secciones bajo un solo encabezado o renombrar la primera como "Introducción a Splitly" y la segunda como "Características principales".

### **PROBLEMA #4: Superposición de texto sobre mapa interactivo**
* **Severidad:** 2
* **Heurística violada:** Diseño Inclusivo - Proporciona experiencias comparables
* **Problema:** En la sección de contacto, las instrucciones de uso del mapa ("Utiliza la tecla Ctrl...") aparecen superpuestas directamente sobre la cartografía. Dependiendo del color del mapa en esa zona, el texto puede volverse ilegible.
* **Recomendación:** Colocar las instrucciones de interacción en un cintillo informativo debajo del mapa o dentro de un contenedor con fondo sólido para garantizar el contraste.

### **PROBLEMA #5: Falta de indicadores de campos obligatorios**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Prevención de errores
* **Problema:** Los formularios de la landing page y de la aplicación móvil (como el de registro) no especifican qué campos son obligatorios. Esto obliga al usuario a adivinar y puede generar frustración tras intentos fallidos de envío.
* **Recomendación:** Añadir el asterisco estándar (*) en los campos obligatorios y un mensaje aclaratorio al inicio del formulario.

### **PROBLEMA #6: Iconos de redes sociales sin etiquetas descriptivas**
* **Severidad:** 3
* **Heurística violada:** Diseño Inclusivo - Diseño accesible
* **Problema:** Los iconos de redes sociales en el footer carecen de etiquetas de texto o atributos "aria-label". Esto hace que la sección sea inaccesible para usuarios que dependen de lectores de pantalla.
* **Recomendación:** Implementar etiquetas descriptivas invisibles (como aria-label="Síguenos en Instagram") para cada enlace social.

### **PROBLEMA #7: Ambigüedad visual en el toggle de ahorro anual**
* **Severidad:** 2
* **Heurística violada:** Arquitectura de Información - ¿Es fácil de encontrar?
* **Problema:** En la sección de precios, el beneficio "Ahorra 2 meses" es visualmente pequeño. Al activar el modo anual, el sistema no resalta con suficiente fuerza el cambio en el costo total, diluyendo la percepción de valor de la oferta.
* **Recomendación:** Utilizar un color de contraste más llamativo para el distintivo de ahorro y mostrar el cálculo del precio mensual anterior tachado.

### **PROBLEMA #8: Contraste insuficiente en selector de rol inactivo**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Visibilidad del estado del sistema
* **Problema:** En el flujo de "¿Cómo funciona?", el botón del rol no seleccionado tiene un color tan claro que parece estar deshabilitado en lugar de simplemente "no activo". El usuario podría pensar que la opción no está disponible.
* **Recomendación:** Aplicar un borde definido o un tono gris más oscuro al estado inactivo para comunicar que el elemento es interactivo pero no está seleccionado.

### **PROBLEMA #9: Inconsistencia monetaria (S/ frente a $)**
* **Severidad:** 3
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** Existe una contradicción en el uso de divisas dentro de la aplicación móvil. Mientras la mayoría de pantallas usan Soles (S/), la vista de detalles de gastos utiliza el signo de Dólares ($). Esto genera incertidumbre financiera crítica en una app de gestión de gastos.
* **Recomendación:** Configurar una variable global de moneda que se aplique a toda la interfaz según la preferencia del hogar, asegurando que el símbolo sea idéntico en todas las pantallas.

### **PROBLEMA #10: Navegación inferior (Tab Bar) inconsistente**
* **Severidad:** 4
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** El menú inferior (Tab Bar) no mantiene una estructura fija. En la pantalla de gastos aparece la opción "Bills", mientras que en la de invitaciones es reemplazada por "Members", y en el seguimiento por "Contributions". Esto desorienta al usuario al cambiarle las rutas principales de navegación según la pantalla en la que se encuentre.
* **Recomendación:** Definir un set de 4 o 5 iconos globales que representen las secciones más importantes del sistema y mantenerlos estáticos en toda la aplicación móvil.

### **PROBLEMA #11: Control de fecha con botones internos confusos**
* **Severidad:** 3
* **Heurística violada:** Usabilidad - Libertad y control del usuario
* **Problema:** El componente de selección de fecha incluye botones de "Set" y "Cancel" como parte de la misma fila de entrada. Esto rompe el flujo natural de introducción de datos y puede causar que el usuario cancele el proceso por error al intentar ajustar el día o el mes.
* **Recomendación:** Implementar un Date Picker nativo del sistema operativo (iOS/Android) que se despliegue en un modal o menú inferior independiente.

### **PROBLEMA #12: Variación de etiquetas de retroceso ("Back" vs "Go back")**
* **Severidad:** 1
* **Heurística violada:** Usabilidad - Consistencia y estándares
* **Problema:** Existe una falta de consistencia en las etiquetas textuales asignadas a los botones de navegación de retorno en la barra superior de la interfaz móvil. En ciertas vistas se utiliza el texto "< Back", mientras que en otras pantallas de la misma aplicación se visualiza como "< Go back". Esta variabilidad rompe con el principio de uniformidad y previsibilidad del sistema.
* **Recomendación:** Estandarizar un único formato de botón de retroceso para todas las pantallas de la aplicación móvil (se sugiere adoptar la etiqueta estándar "< Back" o emplear únicamente un icono de flecha limpia) para unificar la experiencia de navegación.

### **PROBLEMA #13: Botones de sistema incrustados dentro de inputs de texto**
* **Severidad:** 2
* **Heurística violada:** Usabilidad - Estética y diseño minimalista
* **Problema:** Los botones de acción interactivos del sistema, tales como "Search" y "Generate ID", se encuentran posicionados directamente dentro del contenedor interno del campo de texto de entrada. Este patrón de diseño compromete el espacio útil horizontal para la introducción y lectura de datos por parte del usuario, además de saturar la jerarquía visual dentro de los formularios.
* **Recomendación:** Extraer los botones de acción fuera de las cajas de texto y reubicarlos de manera externa (ya sea al lado derecho como un elemento adyacente o debajo del campo correspondiente) para asegurar un área de entrada limpia, espaciosa y legible.

### **PROBLEMA #14: Contraste crítico de accesibilidad en el Login**
* **Severidad:** 3 
* **Heurística violada:** Diseño Inclusivo - Experiencias comparables
* **Problema:** En la pantalla de inicio de sesión, las etiquetas de los campos ("Email", "Password") utilizan un color azul oscuro sobre un fondo negro. Esta combinación no cumple con los estándares mínimos de contraste de la WCAG, dificultando severamente la lectura para personas con visión reducida o en entornos con mucha luz.
* **Recomendación:** Cambiar el color de las etiquetas a blanco o un gris de alta luminancia para asegurar una legibilidad universal.