# 📦 Proyecto FS3

Proyecto desarrollado con **Spring Boot** que expone una API REST para gestionar usuarios y productos. La aplicación se ejecuta en un servidor local y utiliza MySQL como base de datos.

##  Tabla de Contenidos

- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Configuración de la Base de Datos](#configuración-de-la-base-de-datos)
- [Compilación y Ejecución](#compilación-y-ejecución)
- [Acceso a la API](#acceso-a-la-api)
- [Endpoints de la API](#endpoints-de-la-api)
- [Pruebas](#pruebas)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Contribución](#contribución)

##  Requisitos

Antes de ejecutar el proyecto, aseg�rate de tener instalado:

-  **Java JDK 17 o superior** (recomendado JDK 21)
-  **Gradle** (opcional, el proyecto incluye gradlew)
-  **Git**
-  **Docker** (opcional, para ejecutar con contenedor)
-  **MySQL** (para la base de datos)

Puedes verificar Java con:

```bash
java -version
```

##  Instalaci�n

1. Clona el repositorio:

   ```bash
   git clone https://github.com/tu-usuario/proyecto_FS3.git
   ```

2. Entra al directorio del proyecto:

   ```bash
   cd proyecto_FS3
   ```

##  Configuraci�n de la Base de Datos

1. Instala y configura MySQL en tu sistema.

2. Crea una base de datos llamada primer_proyecto (o ajusta seg�n pplication.properties).

3. Ejecuta el script de inicializaci�n:

   ```bash
   mysql -u root -p primer_proyecto < init-mysql.sql
   ```

   O importa el archivo init-mysql.sql en tu cliente MySQL.

4. Verifica la configuraci�n en src/main/resources/application.properties.

##  Compilaci�n y Ejecuci�n

### Compilaci�n

En PowerShell o terminal, ejecuta:

```bash
.\gradlew.bat clean build
```

**Nota:** La primera vez puede tardar m�s porque Gradle descargar� todas las dependencias necesarias.

### Ejecuci�n

Ejecuta el siguiente comando:

```bash
.\gradlew.bat bootRun
```

Cuando la aplicaci�n est� lista, ver�s algo similar a:

`
Tomcat started on port(s): 8080 (http)
Started PrimerProyectoApplication in X.XXX seconds
`

### Con Docker (opcional)

Si prefieres usar Docker:

```bash
docker build -t proyecto-fs3 .
docker run -p 3000:8080 proyecto-fs3
```

##  Acceso a la API

Una vez iniciada la aplicaci�n, la API estar� disponible en:

[http://localhost:8080](http://localhost:8080)

##  Endpoints de la API

La API expone los siguientes endpoints principales:

### Usuarios

- GET /api/v1/users - Obtener todos los usuarios
- GET /api/v1/users/{id} - Obtener usuario por ID
- POST /api/v1/users - Crear un nuevo usuario
- PUT /api/v1/users/{id} - Actualizar usuario
- DELETE /api/v1/users/{id} - Eliminar usuario

### Productos

- GET /api/v1/products - Obtener todos los productos
- GET /api/v1/products/{id} - Obtener producto por ID
- POST /api/v1/products - Crear un nuevo producto
- PUT /api/v1/products/{id} - Actualizar producto
- DELETE /api/v1/products/{id} - Eliminar producto

Para m�s detalles, consulta la documentaci�n de la API o el c�digo en src/main/java/com/primerproyecto/api/controller/.

##  Pruebas

### Pruebas Unitarias

Ejecuta las pruebas con:

```bash
.\gradlew.bat test
```

### Pruebas de API

Usa el archivo 	est.http para probar los endpoints con la extensi�n REST Client en VS Code, o herramientas como Postman.

#### Con REST Client (test.http)

Ejemplo de contenido en 	est.http:

`
GET http://localhost:8080/api/v1/users

###

POST http://localhost:8080/api/v1/users
Content-Type: application/json

{
  "username": "juan_perez",
  "email": "juan@example.com"
}
`

#### Pruebas Completas para Postman

#####  Configuraci�n Base
- **URL Base:** http://localhost:8080
- **Content-Type:** pplication/json

#####  USERS - Usuarios

###### 1 Crear un nuevo usuario
`
POST http://localhost:8080/api/v1/users
`

**Body (JSON):**
`json
{
  "username": "juan_perez",
  "email": "juan@example.com"
}
`

**Respuesta esperada (201):**
`json
{
  "id": 1,
  "username": "juan_perez",
  "email": "juan@example.com"
}
`

###### 2 Obtener todos los usuarios
`
GET http://localhost:8080/api/v1/users
`

**Respuesta esperada (200):**
`json
[
  {
    "id": 1,
    "username": "juan_perez",
    "email": "juan@example.com"
  },
  {
    "id": 2,
    "username": "maria_garcia",
    "email": "maria@example.com"
  }
]
`

###### 3 Obtener un usuario por ID
`
GET http://localhost:8080/api/v1/users/1
`

**Respuesta esperada (200):**
`json
{
  "id": 1,
  "username": "juan_perez",
  "email": "juan@example.com"
}
`

###### 4 Eliminar un usuario
`
DELETE http://localhost:8080/api/v1/users/1
`

**Respuesta esperada (204):** Sin contenido

#####  PRODUCTS - Productos

###### 1 Crear un nuevo producto
`
POST http://localhost:8080/api/v1/products
`

**Body (JSON):**
`json
{
  "name": "Producto Ejemplo",
  "price": 99.99
}
`

**Respuesta esperada (200):**
`json
{
  "id": 1,
  "name": "Producto Ejemplo",
  "price": 99.99
}
`

###### 2 Obtener todos los productos
`
GET http://localhost:8080/api/v1/products
`

**Respuesta esperada (200):**
`json
[
  {
    "id": 1,
    "name": "Producto Ejemplo",
    "price": 99.99
  }
]
`

###### 3 Obtener un producto por ID
`
GET http://localhost:8080/api/v1/products/1
`

**Respuesta esperada (200):**
`json
{
  "id": 1,
  "name": "Producto Ejemplo",
  "price": 99.99
}
`

###### 4 Eliminar un producto
`
DELETE http://localhost:8080/api/v1/products/1
`

**Respuesta esperada (204):** Sin contenido

Aseg�rate de que la aplicaci�n est� ejecut�ndose en http://localhost:8080 antes de probar.

##  Estructura del Proyecto

`
proyecto_FS3/

 src/
    main/
       java/com/primerproyecto/
          PrimerProyectoApplication.java
          api/
             config/
                SecurityConfig.java
             controller/
                ProductController.java
                UserController.java
             dto/
                ProductDTO.java
                UserDTO.java
             model/
                Product.java
                User.java
             repository/
                ProductRepository.java
                UserRepository.java
             service/
                 ProductService.java
                 UserService.java
       resources/
           application.properties
    test/
        java/com/primerproyecto/
            PrimerProyectoApplicationTests.java

 build.gradle
 dockerfile
 gradlew
 gradlew.bat
 init-mysql.sql
 README.md
 settings.gradle
 test.http
`

##  Tecnolog�as Utilizadas

- **Java**: Lenguaje de programaci�n principal
- **Spring Boot**: Framework para aplicaciones Java
- **Spring Data JPA**: Para el acceso a datos
- **Spring Security**: Para la configuraci�n de seguridad
- **MySQL**: Base de datos relacional
- **Gradle**: Herramienta de construcci�n
- **Tomcat**: Servidor embebido
- **Docker**: Contenedorizaci�n (opcional)

##  Contribuci�n

Si deseas contribuir al proyecto:

1. Haz un fork del repositorio.
2. Crea una rama para tu feature (git checkout -b feature/nueva-funcionalidad).
3. Commit tus cambios (git commit -am 'Agrega nueva funcionalidad').
4. Push a la rama (git push origin feature/nueva-funcionalidad).
5. Abre un Pull Request.

##  Licencia

Este proyecto est� bajo la Licencia MIT. Consulta el archivo LICENSE para m�s detalles.
