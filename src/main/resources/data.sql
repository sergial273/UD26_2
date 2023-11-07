-- Drop the database if it exists
DROP DATABASE IF EXISTS Tarea2;

-- Create the database
CREATE DATABASE Tarea2;

-- Switch to the new database
USE Tarea2;
-- Elimina las tablas si existen
DROP TABLE IF EXISTS `cientificos`;
DROP TABLE IF EXISTS `proyectos`;

-- Crea la tabla `cientificos`
CREATE TABLE `cientificos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Crea la tabla `proyectos`
CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `horas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Crea la tabla `Asignado_a`
CREATE TABLE `asignado_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cientifico` int(11) DEFAULT NULL,
  `proyecto` int(11) DEFAULT NULL,
  FOREIGN KEY (cientifico) REFERENCES cientificos(id),
  FOREIGN KEY (proyecto) REFERENCES proyectos(id)
);

-- Inserta datos en la tabla cientificos
INSERT INTO `cientificos` (`nombre`) VALUES
('Juan Pérez'),
('María López'),
('Pedro García'),
('Ana Rodríguez'),
('Luis Martínez');

-- Inserta datos en la tabla proyectos
INSERT INTO `proyectos` (`nombre`, `horas`) VALUES
('Proyecto A', 100),
('Proyecto B', 75),
('Proyecto C', 120),
('Proyecto D', 90),
('Proyecto E', 80);

-- Inserta elementos en la tabla Asignado_a
INSERT INTO `asignado_a` (`cientifico`, `proyecto`) VALUES
(1, 1), -- Científico 1 asignado al Proyecto 1
(2, 2), -- Científico 2 asignado al Proyecto 2
(3, 1), -- Científico 3 asignado al Proyecto 1
(4, 3), -- Científico 4 asignado al Proyecto 3
(5, 4); -- Científico 5 asignado al Proyecto 4

