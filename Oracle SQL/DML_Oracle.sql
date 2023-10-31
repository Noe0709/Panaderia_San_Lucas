-- Crear secuencias para las tablas que utilizan autoincremento (Operar en otra hoja)
CREATE SEQUENCE materia_prima_seq;
CREATE SEQUENCE producto_seq;
CREATE SEQUENCE sucursal_seq;
CREATE SEQUENCE empleado_seq;
CREATE SEQUENCE producto_materia_seq;
CREATE SEQUENCE inventario_seq;
CREATE SEQUENCE pedido_seq;
CREATE SEQUENCE producto_pedido_seq;

-- Insertar información en la tabla materia_prima
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Harina de fuerza', 1.5);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Harina suave', 1.2);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Vinagre', 0.8);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Leche', 1.0);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Jugo de fruta', 1.2);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Levadura fresca', 1.5);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Levadura seca', 1.3);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Azúcar', 0.8);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Sal', 0.5);
INSERT INTO materia_prima (id, nombre, precio) VALUES (materia_prima_seq.NEXTVAL, 'Huevo', 0.9);

-- Insertar información en la tabla producto
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Cubos', 'Pan de forma cúbica');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Especial', 'Pan especial con ingredientes adicionales');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Francés', 'Pan de estilo francés');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Alemán', 'Pan de estilo alemán');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Cachos', 'Pan pequeño y redondo');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Cortadas', 'Pan cortado en rebanadas');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Batidas', 'Pan con una textura suave y esponjosa');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Campechanas', 'Pan con una textura crujiente por fuera y suave por dentro');
INSERT INTO producto (id, nombre, descripcion) VALUES (producto_seq.NEXTVAL, 'Shecas', 'Pan con una textura densa y masticable');

-- Insertar información en la tabla sucursal
INSERT INTO sucursal (id, nombre) VALUES (sucursal_seq.NEXTVAL, 'CENTRAL');
INSERT INTO sucursal (id, nombre) VALUES (sucursal_seq.NEXTVAL, 'CHIVA');
INSERT INTO sucursal (id, nombre) VALUES (sucursal_seq.NEXTVAL, 'BARCO');
INSERT INTO sucursal (id, nombre) VALUES (sucursal_seq.NEXTVAL, 'HEYDI');
INSERT INTO sucursal (id, nombre) VALUES (sucursal_seq.NEXTVAL, 'TERMINAL');

-- Insertar información en la tabla empleado
INSERT INTO empleado (id, nombre, email, id_sucursal, password) VALUES (empleado_seq.NEXTVAL, 'Juan Perez', 'juan.perez@example.com', 1, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO empleado (id, nombre, email, id_sucursal, password) VALUES (empleado_seq.NEXTVAL, 'Maria Rodriguez', 'maria.rodriguez@example.com', 2, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO empleado (id, nombre, email, id_sucursal, password) VALUES (empleado_seq.NEXTVAL, 'Pedro Gomez', 'pedro.gomez@example.com', 3, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

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
INSERT INTO pedido (id, id_sucursal, id_empleado) VALUES (pedido_seq.NEXTVAL, 1, 1);
INSERT INTO pedido (id, id_sucursal, id_empleado) VALUES (pedido_seq.NEXTVAL, 2, 1);

-- Insertar información en la tabla producto_pedido
INSERT INTO producto_pedido (id_pedido, id_producto, cantidad) VALUES (1, 1, 5);
INSERT INTO producto_pedido (id_pedido, id_producto, cantidad) VALUES (1, 2, 10);
INSERT INTO producto_pedido (id_pedido, id_producto, cantidad) VALUES (2, 3, 15);
