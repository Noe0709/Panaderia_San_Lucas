-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_materia_prima START WITH 1 INCREMENT BY 1;

-- Insertar información en la tabla materia_prima
INSERT INTO materia_prima (id, nombre, precio) VALUES (seq_materia_prima.NEXTVAL, 'Harina de fuerza', 1.5);
INSERT INTO materia_prima (id, nombre, precio) VALUES (seq_materia_prima.NEXTVAL, 'Harina suave', 1.2);
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_producto START WITH 100 INCREMENT BY 1;

-- Insertar información en la tabla producto
INSERT INTO producto (id, nombre, descripcion) VALUES (seq_producto.NEXTVAL, 'Cubos', 'Pan de forma cúbica');
INSERT INTO producto (id, nombre, descripcion) VALUES (seq_producto.NEXTVAL, 'Especial', 'Pan especial con ingredientes adicionales');
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_sucursal START WITH 1000 INCREMENT BY 1;

-- Insertar información en la tabla sucursal
INSERT INTO sucursal (id, nombre) VALUES (seq_sucursal.NEXTVAL, 'CENTRAL');
INSERT INTO sucursal (id, nombre) VALUES (seq_sucursal.NEXTVAL, 'CHIVA');
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_empleado START WITH 10000 INCREMENT BY 1;

-- Insertar información en la tabla empleado
INSERT INTO empleado (id, nombre, email, id_sucursal, password) VALUES (seq_empleado.NEXTVAL, 'Juan Perez', 'juan.perez@example.com', 1, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO empleado (id, nombre, email, id_sucursal, password) VALUES (seq_empleado.NEXTVAL, 'Maria Rodriguez', 'maria.rodriguez@example.com', 2, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_producto_materia START WITH 100000 INCREMENT BY 1;

-- Insertar información en la tabla producto_materia
INSERT INTO producto_materia (id, id_producto, id_materia_prima, cantidad) VALUES (seq_producto_materia.NEXTVAL, 1, 1, 2);
INSERT INTO producto_materia (id, id_producto, id_materia_prima, cantidad) VALUES (seq_producto_materia.NEXTVAL, 1, 2, 1);
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_inventario START WITH 1000000 INCREMENT BY 1;

-- Insertar información en la tabla inventario
INSERT INTO inventario (id, id_materia_prima, stock) VALUES (seq_inventario.NEXTVAL, 1, 10);
INSERT INTO inventario (id, id_materia_prima, stock) VALUES (seq_inventario.NEXTVAL, 2, 20);
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_pedido START WITH 10000000 INCREMENT BY 1;

-- Insertar información en la tabla pedido
INSERT INTO pedido (id, id_sucursal, id_empleado) VALUES (seq_pedido.NEXTVAL, 1, 1);
INSERT INTO pedido (id, id_sucursal, id_empleado) VALUES (seq_pedido.NEXTVAL, 2, 1);
-- Repite este patrón para las demás inserciones.

-- Crear una secuencia para generar IDs automáticamente
CREATE SEQUENCE seq_producto_pedido START WITH 20000 INCREMENT BY 1;

-- Insertar información en la tabla producto_pedido
INSERT INTO producto_pedido (id, id_pedido, id_producto, cantidad) VALUES (seq_producto_pedido.NEXTVAL, 1, 1, 5);
INSERT INTO producto_pedido (id, id_pedido, id_producto, cantidad) VALUES (seq_producto_pedido.NEXTVAL, 1, 2, 10);
