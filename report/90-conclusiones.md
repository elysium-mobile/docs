# Conclusiones {#conclusiones}

## Conclusiones y recomendaciones {#conclusiones-y-recomendaciones}

#### Conclusiones
* **Integración y Propuesta de Valor:** La plataforma SoftWork ha logrado integrar con éxito una aplicación móvil orientada al colaborador y un panel de control web para Recursos Humanos. Esta dualidad tecnológica cierra la brecha de comunicación interna, proveyendo un entorno seguro y anónimo que fomenta la participación, cumpliendo directamente con la misión de Elysium de mejorar el clima laboral.
* **Escalabilidad de la Arquitectura:** La adopción de una arquitectura desacoplada, utilizando Spring Boot para el núcleo de los servicios, Supabase para la persistencia y políticas de seguridad, y tecnologías móviles modernas, demostró ser altamente efectiva. Permitió el desarrollo en paralelo y sentó una base sólida para escalar la aplicación a un mayor volumen de usuarios sin comprometer el rendimiento.
* **Impacto del Diseño Centrado en el Usuario:** Las validaciones tempranas mediante prototipos interactivos y pruebas heurísticas confirmaron que un diseño *mobile-first* y accesible reduce drásticamente la fricción. La implementación de foros anónimos y reportes cifrados evidenció un aumento en la percepción de confianza por parte del usuario final.

---

#### Recomendaciones
* **Evolución del Pipeline CI/CD:** Se sugiere robustecer el flujo de Integración y Despliegue Continuo (CI/CD) en GitHub Actions, incorporando pruebas de integración automatizadas más rigurosas y análisis de seguridad estático (SAST) para prevenir vulnerabilidades antes de cada pase a producción.
* **Análisis Avanzado de Datos:** Para futuras iteraciones del Dashboard de RR. HH., se recomienda explorar la integración de algoritmos de procesamiento de lenguaje natural (NLP) que permitan realizar análisis de sentimiento automáticos sobre los reportes y comentarios del foro, agilizando la detección de riesgos psicosociales.
* **Políticas de Retención y Escalabilidad de Base de Datos:** Considerando que el volumen de encuestas diarias y mensajes en el foro crecerá exponencialmente con la adopción del sistema, es imperativo diseñar e implementar políticas claras de archivado (archiving) y particionamiento de datos en Supabase para mantener la agilidad de las consultas históricas.

---

#### Lecciones Aprendidas por Integrante

* **Diego Andres Avalos Cordova:** 
  La experiencia consolidó la importancia de establecer contratos de API claros (OpenAPI) desde el inicio del proyecto. Coordinar el desarrollo de los servicios backend en Spring Boot bajo una arquitectura limpia fue fundamental para evitar bloqueos con el equipo de frontend, demostrando que una planificación rigurosa de la lógica de negocio y la mentoría técnica aceleran las entregas conjuntas.

* **César Augusto Aróstegui Alzamora:** 
  El proceso evidenció el reto de traducir diseños complejos de UI/UX a pantallas móviles responsivas y funcionales. La principal lección fue la necesidad de auditar continuamente la accesibilidad y el contraste de colores para asegurar que la aplicación sea verdaderamente inclusiva para cualquier perfil de empleado.

* **Gianmarco Fabian Jiménez Guerra:** 
  La configuración y gestión de la infraestructura en Supabase dejó grandes aprendizajes sobre la seguridad a nivel de base de datos. Implementar correctamente el Row Level Security (RLS) y gestionar las migraciones SQL de forma versionada probó ser vital para mantener la integridad y privacidad de los datos sensibles de los reportes.

* **Piero Francesco Tenorio Medina:** 
  Se validó el alto valor de las pruebas de usuario tempranas. La lección clave fue comprender cómo el *feedback* directo de las entrevistas puede alterar y mejorar los flujos de navegación, especialmente en procesos críticos como el registro móvil y el manejo de sesiones en el lado del cliente.

* **Flor Contreras Leon:** 
  El desarrollo del panel de Recursos Humanos demostró la complejidad del manejo de estados globales y la visualización de datos en la web. Aprender a integrar librerías de gráficos dinámicos y a consumir métricas en tiempo real desde el backend fue un desafío que subrayó la importancia de optimizar el rendimiento y la carga cognitiva en interfaces analíticas.

# Video App Validation {#video-app-validation}

![App Validation](https://i.postimg.cc/T3Yq4g4q/App-validation.png)(https://youtu.be/AtwN1HZsvvo)

**Enlace del video:** [https://youtu.be/AtwN1HZsvvo](https://youtu.be/AtwN1HZsvvo)

---

# Video About the product {#video-about-the-product}

![About the Product](https://i.postimg.cc/SxN7vCvf/about-the-product.png)(https://youtu.be/rmh9LruBnsc)

**Enlace del video:** [https://youtu.be/rmh9LruBnsc](https://youtu.be/rmh9LruBnsc)

---

# Video About the team {#video-about-the-team}

![About the Team](https://i.postimg.cc/6p5Lmnmd/about-the-team.png)(https://youtu.be/KjCzCiI95mM)

**Enlace del video:** [https://youtu.be/KjCzCiI95mM](https://youtu.be/KjCzCiI95mM)

# Glosario {#glosario}

Glosario de términos técnicos y conceptos clave utilizados en el proyecto, incluyendo definiciones y explicaciones para facilitar la comprensión de los lectores. También servicios como Amazon Web Services (AWS) y herramientas como GitHub Actions, entre otros, serán incluidos para contextualizar su uso dentro del proyecto.

| Término | Definición |
|:---|:---|
| DDD (Domain-Driven Design) | Enfoque de diseño de software centrado en el dominio del negocio y en la separación clara de responsabilidades. |
| AWS (Amazon Web Services) | Plataforma de servicios en la nube utilizada para despliegue, almacenamiento y soporte de infraestructura. |
| Aggregate | Conjunto de entidades y objetos de valor tratados como una unidad de consistencia dentro del dominio. |
| Entity | Objeto del dominio con identidad propia y ciclo de vida definido. |
| Value Object | Objeto inmutable que representa un concepto del dominio sin identidad propia. |
| Bounded Context | Límite funcional y semántico dentro del cual un modelo del dominio mantiene significado consistente. |
| Context Mapping | Técnica para representar relaciones, dependencias y tipos de colaboración entre Bounded Context. |
| EventStorming | Técnica colaborativa para descubrir eventos del dominio, procesos y límites funcionales. |
| Lean UX | Metodología de diseño centrada en validación continua, hipótesis y mejora iterativa. |
| MVP (Minimum Viable Product) | Versión mínima del producto construida para validar hipótesis con usuarios reales. |
| Epic | Agrupación de historias de usuario relacionadas con un objetivo funcional amplio. |
| User Story | Descripción breve de una necesidad del usuario expresada desde su perspectiva. |
| Spike | Historia de investigación orientada a reducir incertidumbre técnica o funcional. |
| BDD (Behavior-Driven Development) | Enfoque de desarrollo y especificación basado en escenarios y comportamiento esperado. |
| Gherkin | Sintaxis estructurada usada para redactar criterios de aceptación en BDD. |
| API REST | Interfaz de comunicación basada en recursos HTTP para exponer funcionalidades del sistema. |
| JWT (JSON Web Token) | Token digital usado para autenticar y autorizar solicitudes de manera segura. |
| CI/CD | Prácticas de integración y despliegue continuos para automatizar entrega de software. |
| GitHub Actions | Servicio de automatización usado para ejecutar flujos de trabajo de integración y despliegue. |
| RDS (Relational Database Service) | Servicio administrado de bases de datos relacionales en AWS. |
| S3 (Simple Storage Service) | Servicio de almacenamiento de objetos en la nube usado para archivos y multimedia. |
| PostgreSQL | Sistema gestor de base de datos relacional usado para persistir la información del proyecto. |
| Spring Data JPA | Abstracción de acceso a datos en Java para persistencia sobre bases relacionales. |
| Repository | Componente encargado de abstraer operaciones de lectura y escritura de datos. |
| Domain Service | Servicio del dominio que encapsula lógica de negocio que no pertenece a una sola entidad. |
| Application Layer | Capa que orquesta casos de uso y coordina operaciones entre el dominio y la infraestructura. |
| Infrastructure Layer | Capa que implementa detalles técnicos como persistencia, mensajería e integración externa. |
| ACL (Anti-Corruption Layer) | Capa de adaptación que protege un modelo de dominio frente a dependencias externas. |
| Strategy | Patrón de diseño que permite intercambiar algoritmos o comportamientos en tiempo de ejecución. |
| Microservicios | Estilo de arquitectura que divide una aplicación en servicios pequeños e independientes. |
| Dashboard | Panel visual que concentra indicadores, métricas y gráficos para toma de decisiones. |
| KPI (Key Performance Indicator) | Indicador clave usado para medir desempeño o estado de un proceso. |
| OKR (Objectives and Key Results) | Marco de gestión de objetivos y resultados clave para seguimiento estratégico. |
| Socket.io | Biblioteca para comunicación en tiempo real entre servidor y cliente. |
| OAuth 2.0 | Protocolo de autorización utilizado para acceso delegado a servicios externos. |
| CSV | Formato de archivo de texto estructurado por valores separados por comas. |
| PDF | Formato de documento portátil usado para exportar reportes y comprobantes. |
| IAM (Identity and Access Management) | Bounded Context responsable de identidades, autenticación y autorización. |
| RRHH | Área de Recursos Humanos encargada de gestionar el clima laboral y la atención a empleados. |
| Ubiquitous Language | Lenguaje compartido del dominio que evita ambigüedades entre equipo técnico y usuarios. |
| Design Tokens | Variables reutilizables que definen valores visuales (colores, tipografía, espaciamiento, elevaciones) usadas por un Design System. |
| Design System | Conjunto de componentes, patrones, tokens y documentación que garantizan consistencia visual y UX en el producto. |
| Tailwind CSS | Framework utilitario de CSS que facilita la composición de estilos mediante clases atómicas y tokens. |
| Astro | Framework moderno para sitios estáticos y Jamstack, optimizado para rendimiento y despliegue en Vercel. |
| Vercel | Plataforma de despliegue y hosting para aplicaciones frontend con previews por PR y CDN integrado. |
| Firebase App Distribution | Servicio de Firebase para distribuir versiones de prueba de apps móviles a testers y QA. |
| OpenTelemetry | Conjunto de APIs, SDKs y herramientas estándar para trazabilidad, métricas y telemetría distribuida. |
| Prometheus | Sistema de recolección y almacenamiento de métricas en formato de series temporales, usado para monitoreo. |
| Grafana | Plataforma de visualización y dashboards para métricas y logs agregados. |
| Hexagonal Architecture | Patrón arquitectónico (Ports & Adapters) que separa el dominio de las dependencias de infraestructura. |
| Screaming Architecture | Enfoque de organización del código donde la estructura revela las intenciones del dominio más que el framework. |
| Riverpod | Biblioteca de gestión de estado recomendada para Flutter, que favorece inmutabilidad y testabilidad. |
| BLoC | Patrón de gestión de estado para Flutter (Business Logic Component) que separa lógica de UI mediante streams. |
| Hilt | Biblioteca de inyección de dependencias para Android basada en Dagger, simplifica el wiring de componentes. |
| Jetpack Compose | Toolkit declarativo de UI para Android que permite construir interfaces con Kotlin de forma reactiva. |
| ktlint / detekt | Herramientas para estandarizar estilo de código y análisis estático en proyectos Kotlin. |
| Flyway / Liquibase | Herramientas para versionado y migraciones de esquema de bases de datos en entornos de producción. |
| Checkstyle / SpotBugs | Herramientas de análisis estático para Java que ayudan a mantener calidad y detectar bugs comunes. |
| EncryptedSharedPreferences | API de Android para almacenar datos sensibles de forma cifrada en el dispositivo. |
| Figma | Herramienta de diseño colaborativo para crear wireframes, mockups y prototipos interactivos. |
| Wireframe | Representación esquemática de la estructura y disposición de una interfaz, enfocada en la funcionalidad y jerarquía. |
| Mockup | Representación visual estática de alta fidelidad que muestra el aspecto final de la interfaz. |
| Accessibility (WCAG) | Conjunto de directrices (WCAG) para asegurar que interfaces sean accesibles a personas con diversas capacidades. |

# Bibliografía {#bibliografía}

- Domain-Driven Design Practitioners. (s.f.). Context map. Domain-driven Design: A Practitioners Guide. https://ddd-practitioners.com/home/glossary/context-map/

- ddd-crew. (s.f.). Domain message flow modelling [Repositorio de software]. GitHub. https://github.com/ddd-crew/domain-message-flow-modelling

- Tinoco, J. (2023).Clima organizacional y satisfacción laboral de los trabajadores de una empresa peruana. Industrial Data, 26(2), 217-237.
http://www.scielo.org.pe/scielo.php?script=sci_arttext&pid=S1810-99932023000200217

- Gonzales, G. (2022). Ambiente laboral y su relación en el desempeño laboralen los trabajadores de una institución pública, Huánuco–2022[Tesis de especialización, Universidad Norbert Wiener]. Alicia. https://alicia.concytec.gob.pe/vufind/Record/UWIE_225da1fd737364e5756e72f61e0d60e7

# Anexos {#anexos}

Link de la organización de Github de la Startup: [https://github.com/elysium-mobile](https://github.com/elysium-mobile)

Link del repositorio de Github del reporte del trabajo: [https://github.com/elysium-mobile/docs](https://github.com/elysium-mobile/docs)

Link del repositorio de Github de la landing page: [https://github.com/elysium-mobile/landing-page](https://github.com/elysium-mobile/landing-page)

Link del repositorio de Github de la aplicación móvil en Kotlin: [https://github.com/elysium-mobile/frontend](https://github.com/elysium-mobile/frontend)

Link del Diagrama de Clases: [https://lucid.app/lucidchart/8ae423f1-1d2a-4c56-b57a-52b0f45420ee/edit?viewport_loc=-4959%2C-5147%2C27759%2C13963%2C0_0&invitationId=inv_bac7d21b-9b8e-4663-914c-ef2fd53ebe0c](https://lucid.app/lucidchart/8ae423f1-1d2a-4c56-b57a-52b0f45420ee/edit?viewport_loc=-4959%2C-5147%2C27759%2C13963%2C0_0&invitationId=inv_bac7d21b-9b8e-4663-914c-ef2fd53ebe0c)

Link de Miro: [https://miro.com/app/board/uXjVHdLLoFo=/?share_link_id=197484953010](https://miro.com/app/board/uXjVHdLLoFo=/?share_link_id=197484953010)

Link de la Landing Page desplegada: [https://landing-page-tau-jet-49.vercel.app/](https://landing-page-tau-jet-49.vercel.app/)

Link del Backend desplegado en AWS EC2: [http://ec2-3-131-45-167.us-east-2.compute.amazonaws.com:8080/swagger-ui/index.html](http://ec2-3-131-45-167.us-east-2.compute.amazonaws.com:8080/swagger-ui/index.html)
