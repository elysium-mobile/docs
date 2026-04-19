# Capítulo IV: Solution Software Design {#capítulo-iv-solution-software-design}

## 4.1. Strategic-Level Domain-Driven Design {#strategic-level-domain-driven-design}
 
### 4.1.1. EventStorming {#eventstorming}
Para esta sección ocupamos la herramienta de Miro y realizamos el Event Storming a cada una de los Bounded Context definidos en los que se vana  trabajar.

#### - IAM (Identity and Access Management)
#### - Membership and Payments
#### - Dashboard and Analytics
#### - Workers Forum
#### - Feedback For Employees

#### 4.1.1.1. Candidate Context Discovery {#candidate-context-discovery}
En esta sección aplicamos la técnica de Candidate Discovery para identificar y separar los posibles Bounded Context. Esto divide el trabajo en subramas donde se trabajan ciertas funcionalidades por separado.

Con esto, nos llevó a crear los iguientes Bounded Context:

| Bounded Context | Descripción | Eventos Clave |
| :--- | :--- | :--- |
| IAM | a| s|
| Membership and Payments | a | a |
| Dashboard and Analytics | a |a |
| Workers Forum | a | a |
| Feedback for Employees | a | a |
 
#### 4.1.1.2. Domain Message Flows Modeling {#domain-message-flows-modeling}

El Domian Massage Flow Modelling es una técnica que nos permite representar cómo fluyen los mensjaes de dominios (comandos, eventos y consultas) entre los distintos Bounded Context. Esto se hace con el objetivo de especificar dentro del entorno las dependencias y responsabilidades de cada uno de los contextos.

<b>Escenario 01:</b>

<b>Escenario 02:</b>

<b>Escenario 03:</b>

<b>Escenario 04:</b>

<b>Escenario 05:</b>

#### 4.1.1.3. Bounded Context Canvases {#bounded-context-canvases}

El Bounded Context Canvas es una herramienta que se aplica dentro del marco del DDD (Domain-Driven-Design) que nos permite representar de manera clara los límites, las responsabilidades e interacciones de cada contexto dentro de un sistema que puede llegar a ser complejo. 

En esta sección se representan los Bounded Context Canvases correspondientes a los contextos identificados dentro de nuestra aplicación:



### 4.1.2. Context Mapping {#context-mapping}

### 4.1.3. Software Architecture {#software-architecture}

#### 4.1.3.1. Software Architecture Context Level Diagrams {#software-architecture-context-level-diagrams}

Para el diagrama de Contexto, se muestra la relación entre el sistema y los actores externos que interactuan con él. En este caso, los trabajadores, que interactuan y comparten experiencias con otros trabajadores y Gerentes de RRHH que escuchan y supervisan el comporatamiento dentro del entorno laboral. También se incluyen servicios a utilizar, como el servicio de notificaciones (envíos de correo/SMS hacia el usuario) y el servicio de pagos que será utilizado en el contexto de membresías.

#### 4.1.3.2. Software Architecture Container Level Diagrams {#software-architecture-container-level-diagrams}

El diagrama de contenedores representa los principales componentes del sistema y cómo interactuan entre sí. Se muestra la aplicación móvil para los trabajadores y los gerentes de RRHH, el gestor de backend que centraliza la lógica de negocio y los Bounded Context, como la base de datos y la integración con distintos servicios.

#### 4.1.3.3. Software Architecture Deployment Diagrams {#software-architecture-deployment-diagrams}
El siguiente diagrama de despliegue muestra la infraestructura física y lógica que se ejecutan los principales componentes del sistema.


## 4.2. Tactical-Level Domain-Driven Design {#tactical-level-domain-driven-design}

### 4.2.1. Bounded Context: Identity and Access Management
#### 4.2.1.1. Domain Layer  
#### 4.2.1.2. Interface Layer
#### 4.2.1.3. Application Layer
#### 4.2.1.4  Infrastructure Layer
#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams 
#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.1.6.1. Bunded Context Domain Layer Class Diagrams 
#### 4.2.1.6.2. Bounded Context Database Design Diagram 

### 4.2.2. Bounded Context: Subscription and Payments Management
#### 4.2.2.1. Domain Layer  
#### 4.2.2.2. Interface Layer
#### 4.2.2.3. Application Layer
#### 4.2.2.4  Infrastructure Layer
#### 4.2.2.5. Bounded Context Software Architecture Component Level Diagrams 
#### 4.2.3.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.3.6.1. Bunded Context Domain Layer Class Diagrams 
#### 4.2.3.6.2. Bounded Context Database Design Diagram 

### 4.2.3. Bounded Context: Workers Forum
#### 4.2.3.1. Domain Layer  
#### 4.2.3.2. Interface Layer
#### 4.2.3.3. Application Layer
#### 4.2.3.4  Infrastructure Layer
#### 4.2.3.5. Bounded Context Software Architecture Component Level Diagrams 
#### 4.2.3.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.3.6.1. Bunded Context Domain Layer Class Diagrams 
#### 4.2.3.6.2. Bounded Context Database Design Diagram 

### 4.2.4. Bounded Context: Dashboard and Analytics 
#### 4.2.4.1. Domain Layer  
#### 4.2.4.2. Interface Layer
#### 4.2.4.3. Application Layer
#### 4.2.4.4  Infrastructure Layer
#### 4.2.4.5. Bounded Context Software Architecture Component Level Diagrams 
#### 4.2.4.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.4.6.1. Bunded Context Domain Layer Class Diagrams 
#### 4.2.4.6.2. Bounded Context Database Design Diagram 

### 4.2.5. Bounded Context: Feedback for Workers
#### 4.2.5.1. Domain Layer  
#### 4.2.5.2. Interface Layer
#### 4.2.5.3. Application Layer
#### 4.2.5.4  Infrastructure Layer
#### 4.2.5.5. Bounded Context Software Architecture Component Level Diagrams 
#### 4.2.5.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.5.6.1. Bunded Context Domain Layer Class Diagrams 
#### 4.2.5.6.2. Bounded Context Database Design Diagram 

### 4.2.6. Bounded Context: <Bounded Context Name> 
#### 4.2.6.1. Domain Layer  
#### 4.2.6.2. Interface Layer
#### 4.2.6.3. Application Layer
#### 4.2.6.4  Infrastructure Layer
#### 4.2.6.5. Bounded Context Software Architecture Component Level Diagrams 
#### 4.2.6.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.6.6.1. Bunded Context Domain Layer Class Diagrams 
#### 4.2.6.6.2. Bounded Context Database Design Diagram 
