-- Insertar información en la tabla materia_prima
INSERT INTO materia_prima (nombre, precio) VALUES ('Harina de fuerza', 1.5);
INSERT INTO materia_prima (nombre, precio) VALUES ('Harina suave', 1.2);
INSERT INTO materia_prima (nombre, precio) VALUES ('Vinagre', 0.8);
INSERT INTO materia_prima (nombre, precio) VALUES ('Leche', 1.0);
INSERT INTO materia_prima (nombre, precio) VALUES ('Jugo de fruta', 1.2);
INSERT INTO materia_prima (nombre, precio) VALUES ('Levadura fresca', 1.5);
INSERT INTO materia_prima (nombre, precio) VALUES ('Levadura seca', 1.3);
INSERT INTO materia_prima (nombre, precio) VALUES ('Azúcar', 0.8);
INSERT INTO materia_prima (nombre, precio) VALUES ('Sal', 0.5);
INSERT INTO materia_prima (nombre, precio) VALUES ('Huevo', 0.9);

-- Insertar información en la tabla producto
INSERT INTO producto (nombre, descripcion) VALUES ('Cubos', 'Pan de forma cúbica');
INSERT INTO producto (nombre, descripcion) VALUES ('Especial', 'Pan especial con ingredientes adicionales');
INSERT INTO producto (nombre, descripcion) VALUES ('Francés', 'Pan de estilo francés');
INSERT INTO producto (nombre, descripcion) VALUES ('Alemán', 'Pan de estilo alemán');
INSERT INTO producto (nombre, descripcion) VALUES ('Cachos', 'Pan pequeño y redondo');
INSERT INTO producto (nombre, descripcion) VALUES ('Cortadas', 'Pan cortado en rebanadas');
INSERT INTO producto (nombre, descripcion) VALUES ('Batidas', 'Pan con una textura suave y esponjosa');
INSERT INTO producto (nombre, descripcion) VALUES ('Campechanas', 'Pan con una textura crujiente por fuera y suave por dentro');
INSERT INTO producto (nombre, descripcion) VALUES ('Shecas', 'Pan con una textura densa y masticable');

-- Insertar información en la tabla sucursal
INSERT INTO sucursal (nombre) VALUES ('CENTRAL');
INSERT INTO sucursal (nombre) VALUES ('CHIVA');
INSERT INTO sucursal (nombre) VALUES ('BARCO');
INSERT INTO sucursal (nombre) VALUES ('HEYDI');
INSERT INTO sucursal (nombre) VALUES ('TERMINAL');

-- Insertar información en la tabla empleado
INSERT INTO empleado (nombre, email, id_sucursal, password) VALUES ('Juan Perez', 'juan.perez@example.com', 1, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO empleado (nombre, email, id_sucursal, password) VALUES ('Maria Rodriguez', 'maria.rodriguez@example.com', 2, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO empleado (nombre, email, id_sucursal, password) VALUES ('Pedro Gomez', 'pedro.gomez@example.com', 3, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- Insertar información en la tabla producto_materia
INSERT INTO producto_materia (id_producto, id_materia_prima, cantidad) VALUES (1, 1, 2);
INSERT INTO producto_materia (id_producto, id_materia_prima, cantidad) VALUES (1, 2, 1);
INSERT INTO producto_materia (id_producto, id_materia_prima, cantidad) VALUES (2, 3, 3);
INSERT INTO producto_materia (id_producto, id_materia_prima, cantidad) VALUES (2, 4, 2);
INSERT INTO producto_materia (id_producto, id_materia_prima, cantidad) VALUES (3, 10, 8);

-- Insertar información en la tabla inventario
INSERT INTO inventario (id_materia_prima, stock) VALUES (1, 10);
INSERT INTO inventario (id_materia_prima, stock) VALUES (2, 20);
INSERT INTO inventario (id_materia_prima, stock) VALUES (3, 10);
INSERT INTO inventario (id_materia_prima, stock) VALUES (4, 20);
INSERT INTO inventario (id_materia_prima, stock) VALUES (5, 10);
INSERT INTO inventario (id_materia_prima, stock) VALUES (6, 20);
INSERT INTO inventario (id_materia_prima, stock) VALUES (7, 10);
INSERT INTO inventario (id_materia_prima, stock) VALUES (8, 20);
INSERT INTO inventario (id_materia_prima, stock) VALUES (9, 10);
INSERT INTO inventario (id_materia_prima, stock) VALUES (10, 20);

-- Insertar información en la tabla pedido
INSERT INTO pedido (id_sucursal, id_empleado) VALUES (1, 1);
INSERT INTO pedido (id_sucursal, id_empleado) VALUES (2, 1);

-- Insertar información en la tabla producto_pedido
INSERT INTO producto_pedido (id_pedido, id_producto, cantidad) VALUES (1, 1, 5);
INSERT INTO producto_pedido (id_pedido, id_producto, cantidad) VALUES (1, 2, 10);
INSERT INTO producto_pedido (id_pedido, id_producto, cantidad) VALUES (2, 3, 15);