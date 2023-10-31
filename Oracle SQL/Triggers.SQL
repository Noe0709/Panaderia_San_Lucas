-- Trigger para mantener el inventario actualizado cuando se inserta

CREATE OR REPLACE TRIGGER trg_actualizar_inventario
AFTER INSERT ON producto_pedido
FOR EACH ROW
BEGIN
  UPDATE inventario
  SET stock = stock - :new.cantidad
  WHERE id_materia_prima IN (
    SELECT id_materia_prima
    FROM producto_materia
    WHERE id_producto = :new.id_producto
  );
END;
/


-- Trigger para verificar el stock antes de insertar un nuevo pedido (jalarlo del front/back)

CREATE OR REPLACE TRIGGER trg_verificar_stock
BEFORE INSERT ON producto_pedido
FOR EACH ROW
BEGIN
  FOR rec IN (SELECT id_materia_prima, cantidad FROM producto_materia WHERE id_producto = :new.id_producto) LOOP
    IF rec.cantidad > (SELECT stock FROM inventario WHERE id_materia_prima = rec.id_materia_prima) THEN
      RAISE_APPLICATION_ERROR(-20001, 'Stock insuficiente para el producto.');
    END IF;
  END LOOP;
END;
/
