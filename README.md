# 📦 proyecto_FS3

Proyecto desarrollado con **Spring Boot** que expone una API ejecutándose en un servidor local.

---

## 📋 Requisitos

Antes de ejecutar el proyecto asegúrate de tener instalado:

- ☕ **Java JDK 25 o superior**
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

## 🧪 Pruebas Completas para Postman

### ⚙️ Configuración Base
- **URL Base:** `http://localhost:8080`
- **Content-Type:** `application/json`

---

### 👥 USERS - Usuarios

#### 1️⃣ Crear un nuevo usuario
```
POST http://localhost:8080/api/v1/users
```

**Body (JSON):**
```json
{
  "username": "juan_perez",
  "email": "juan@example.com"
}
```

**Respuesta esperada (201):**
```json
{
  "id": 1,
  "username": "juan_perez",
  "email": "juan@example.com"
}
```

---

#### 2️⃣ Obtener todos los usuarios
```
GET http://localhost:8080/api/v1/users
```

**Respuesta esperada (200):**
```json
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
```

---

#### 3️⃣ Obtener un usuario por ID
```
GET http://localhost:8080/api/v1/users/1
```

**Respuesta esperada (200):**
```json
{
  "id": 1,
  "username": "juan_perez",
  "email": "juan@example.com"
}
```

---

#### 4️⃣ Eliminar un usuario
```
DELETE http://localhost:8080/api/v1/users/1
```

**Respuesta esperada (204):** Sin contenido

---

### 🛍️ PRODUCTS - Productos

#### 1️⃣ Crear un nuevo producto
```
POST http://localhost:8080/api/v1/products
```

**Body (JSON):**
```json
{
  "name": "Laptop Gaming",
  "description": "Laptop para juegos de alta gama con RTX 4080",
  "price": 1500.00,
  "stock": 10
}
```

**Respuesta esperada (200):**
```json
{
  "id": 1,
  "name": "Laptop Gaming",
  "description": "Laptop para juegos de alta gama con RTX 4080",
  "price": 1500.0,
  "stock": 10
}
```

---

#### 2️⃣ Obtener todos los productos
```
GET http://localhost:8080/api/v1/products
```

**Respuesta esperada (200):**
```json
[
  {
    "id": 1,
    "name": "Laptop Gaming",
    "description": "Laptop para juegos de alta gama con RTX 4080",
    "price": 1500.0,
    "stock": 10
  },
  {
    "id": 2,
    "name": "Mouse Inalámbrico",
    "description": "Mouse ergonómico con batería recargable",
    "price": 25.50,
    "stock": 50
  }
]
```

---

#### 3️⃣ Obtener un producto por ID
```
GET http://localhost:8080/api/v1/products/1
```

**Respuesta esperada (200):**
```json
{
  "id": 1,
  "name": "Laptop Gaming",
  "description": "Laptop para juegos de alta gama con RTX 4080",
  "price": 1500.0,
  "stock": 10
}
```

---

#### 4️⃣ Eliminar un producto
```
DELETE http://localhost:8080/api/v1/products/1
```

**Respuesta esperada (204):** Sin contenido

---

### 📦 Ejemplos adicionales de productos

```json
{
  "name": "Teclado Mecánico RGB",
  "description": "Teclado con switches Gateron Blue y iluminación RGB",
  "price": 89.99,
  "stock": 25
}
```

```json
{
  "name": "Monitor 4K 144Hz",
  "description": "Monitor gaming 27 pulgadas 4K con 144Hz",
  "price": 599.99,
  "stock": 8
}
```

```json
{
  "name": "Auriculares Inalámbricos",
  "description": "Auriculares Bluetooth con cancelación de ruido",
  "price": 199.99,
  "stock": 30
}
```

---

### 📋 Pasos para probar en Postman

1. **Abre Postman**
2. **Copia la URL** (ejemplo: `http://localhost:8080/api/v1/users`)
3. **Selecciona el método HTTP** (GET, POST, DELETE)
4. **Para POST:**
   - Ve a la pestaña `Body`
   - Selecciona `raw`
   - Elige `JSON` en el dropdown
   - Pega el JSON del Body
5. **Click en `Send`**
6. **Verifica la respuesta** en la sección inferior

---

## 📖 Recursos Adicionales

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Spring Data JPA](https://spring.io/projects/spring-data-jpa)
- [Lombok Documentation](https://projectlombok.org/)
- [REST Best Practices](https://restfulapi.net/)

---

## 👨‍💼 Autor

Proyecto educativo para aprender Spring Boot

**¡Buena suerte con tu aprendizaje!** 🚀
