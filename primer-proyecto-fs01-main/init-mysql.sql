-- Script SQL para inicializar la base de datos MySQL
-- Ejecutar este script en MySQL Workbench o desde línea de comandos

-- Crear la base de datos (opcional, Spring Boot puede crearla automáticamente)
CREATE DATABASE IF NOT EXISTS primer_proyecto;
USE primer_proyecto;

-- Tabla de usuarios (se crea automáticamente con Hibernate, pero aquí está por referencia)
-- CREATE TABLE users (
--     id BIGINT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) NOT NULL UNIQUE,
--     email VARCHAR(255) NOT NULL
-- );

-- Tabla de productos (se crea automáticamente con Hibernate, pero aquí está por referencia)
-- CREATE TABLE products (
--     id BIGINT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     description TEXT,
--     price DOUBLE NOT NULL,
--     stock INT NOT NULL
-- );

-- Insertar datos de prueba (opcional)
INSERT INTO users (username, email) VALUES
('admin', 'admin@example.com'),
('usuario1', 'usuario1@example.com');

INSERT INTO products (name, description, price, stock) VALUES
('Laptop Gaming', 'Laptop para juegos de alta gama', 1500.00, 10),
('Mouse Inalámbrico', 'Mouse ergonómico con batería recargable', 25.50, 50),
('Teclado Mecánico', 'Teclado RGB con switches mecánicos', 89.99, 25);