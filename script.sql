CREATE TABLE sucursal (
  id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre varchar2(225)
);

CREATE TABLE empleado (
  id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre varchar(150),
  email varchar(100),
  password varchar(100),
  id_sucursal NUMBER,
  CONSTRAINT fk_empleado_sucursal
    FOREIGN KEY (id_sucursal)
      REFERENCES sucursal(id)
);

CREATE TABLE producto (
  id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre varchar2(50),
  descripcion varchar2(225)
);

CREATE TABLE materia_prima (
  id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre varchar(100),
  precio float
);

CREATE TABLE producto_materia (
  id_producto NUMBER,
  id_materia_prima NUMBER,
  cantidad NUMBER,
  CONSTRAINT fk_product_materia_producto
    FOREIGN KEY (id_producto)
      REFERENCES producto(id),
  CONSTRAINT fk_product_materia_materia_prima
    FOREIGN KEY (id_materia_prima)
      REFERENCES materia_prima(id)
);

CREATE TABLE inventario (
  id_materia_prima NUMBER PRIMARY KEY,
  stock NUMBER,
  CONSTRAINT fk_inventario_materia_prima
    FOREIGN KEY (id_materia_prima)
      REFERENCES materia_prima(id)
);

CREATE TABLE pedido (
  id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  id_sucursal NUMBER,
  id_empleado NUMBER,
  CONSTRAINT fk_pedido_sucursal
    FOREIGN KEY (id_sucursal)
      REFERENCES sucursal(id),
  CONSTRAINT fk_pedido_empleado
    FOREIGN KEY (id_empleado)
      REFERENCES empleado(id)
);

CREATE TABLE producto_pedido (
  id_pedido NUMBER,
  id_producto NUMBER, 
  cantidad NUMBER,
  CONSTRAINT fk_producto_pedido_pedido
    FOREIGN KEY (id_pedido)
      REFERENCES pedido(id),
  CONSTRAINT fk_producto_pedido_producto
    FOREIGN KEY (id_producto)
      REFERENCES producto(id)
);