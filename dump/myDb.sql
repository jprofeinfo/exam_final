SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar (255),
  `precio` int(11),
  `fotografia` blob,
  PRIMARY KEY (id_producto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Prod1', 'producto 1', 100),
(2, 'Prod2', 'producto 2', 200),
(3, 'Prod3', 'producto 3', 300),
(4, 'Prod4', 'producto 4', 400);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Creación de la tabla Facturas
CREATE TABLE Facturas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    cliente VARCHAR(100),
    total DECIMAL(10, 2)
);

-- Creación de la tabla LineasFactura
CREATE TABLE LineasFactura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    factura_id INT,
    concepto VARCHAR(255),
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (factura_id) REFERENCES Facturas(id)
);

-- Inserts para dos facturas con tres líneas de factura cada una
INSERT INTO Facturas (fecha, cliente, total) VALUES ('2024-02-01', 'IBM', 90.00);
INSERT INTO LineasFactura (factura_id, concepto, cantidad, precio_unitario) VALUES
(1, 'Ord. IBM PC', 1, 50.00),
(1, 'Impresora Pro', 2, 20.00);

INSERT INTO Facturas (fecha, cliente, total) VALUES ('2024-02-02', 'Instagram SL', 75.50);
INSERT INTO LineasFactura (factura_id, concepto, cantidad, precio_unitario) VALUES
(2, 'Monitor HP', 3, 12.50),
(2, 'Mouse HP', 1, 30.00);

INSERT INTO Facturas (fecha, cliente, total) VALUES ('2024-02-03', 'NTT Data', 80.00);
INSERT INTO LineasFactura (factura_id, concepto, cantidad, precio_unitario) VALUES
(3, 'Servidor NT360', 2, 20.00),
(3, 'Disco duro  HP', 1, 40.00);

INSERT INTO Facturas (fecha, cliente, total) VALUES ('2024-02-04', 'Centauro SL', 150.00);
INSERT INTO LineasFactura (factura_id, concepto, cantidad, precio_unitario) VALUES
(4, 'Router HP', 1, 100.00),
(4, 'Switch PaloAlto', 2, 25.00);

INSERT INTO Facturas (fecha, cliente, total) VALUES ('2024-02-05', 'HOSPIMED', 85.00);
INSERT INTO LineasFactura (factura_id, concepto, cantidad, precio_unitario) VALUES
(5, 'NVIDIA GeForce', 1, 40.00),
(5, 'Memoria RAM Kingston', 2, 22.50);
