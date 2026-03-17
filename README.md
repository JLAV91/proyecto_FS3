# 📦 proyecto_FS3

Proyecto desarrollado con **Spring Boot** que expone una API ejecutándose en un servidor local.

---

## 📋 Requisitos

Antes de ejecutar el proyecto asegúrate de tener instalado:

- ☕ **Java JDK 17 o superior**
- 🧰 **Gradle** (opcional, el proyecto incluye `gradlew`)
- 💻 **Git**
- 🧑‍💻 **PowerShell / Terminal**

Puedes verificar Java con:

```bash
java -version
📥 Clonar el repositorio
git clone https://github.com/tu-usuario/proyecto_FS3.git

Luego entra al directorio del proyecto:

cd primer-proyecto-fs01-main
🚀 Compilar el proyecto

En PowerShell, ejecuta:

.\gradlew.bat clean build

⏳ Nota:
La primera vez puede tardar más porque Gradle descargará todas las dependencias necesarias.

▶️ Ejecutar la aplicación

Ejecuta el siguiente comando:

.\gradlew.bat bootRun

Cuando la aplicación esté lista verás algo similar a:

Tomcat started on port(s): 8080 (http)
Started PrimerProyectoApplication in X.XXX seconds
🌐 Acceder a la API

Una vez iniciada la aplicación, la API estará disponible en:

http://localhost:8080
📂 Estructura del proyecto
proyecto_FS3
│
├── src
│   ├── main
│   │   ├── java
│   │   └── resources
│   │
│   └── test
│
├── build.gradle
├── gradlew
├── gradlew.bat
└── README.md
🛠 Tecnologías utilizadas

Java

Spring Boot

Gradle

Tomcat embebido
