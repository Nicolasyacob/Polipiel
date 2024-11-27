

-- Dimensiones: Datos generales sobre clientes, empleados, productos, transporte, etc.
-- Tabla de clientes
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, direccion, email, red_social, fecha_registro) VALUES 
(1, 'Sofia', 'Lopez', '15222546', 'Av. Siempre Viva 742', 'sofia.lopez@gmail.com', 'Instagram', '2024-01-10'), 
(2, 'Lucas', 'Martinez', '15133122', 'Calle Falsa 123', 'lucas.martinez@gmail.com', 'Facebook', '2024-01-12'), 
(3, 'Carla', 'Gomez', '15466455', 'Pasaje Verde 456', 'carla.gomez@gmail.com', 'WhatsApp', '2024-01-15'), 
(4, 'Ricardo', 'Perez', '15794613', 'Boulevard Azul 789', 'ricardo.perez@gmail.com', 'Mercado Libre', '2024-01-18'), 
(5, 'Mariana', 'Rodriguez', '15641385', 'Calle Rosa 321', 'mariana.rodriguez@gmail.com', 'Instagram', '2024-01-20'),
(6, 'Gabriel', 'Sánchez', '15555586', 'Calle Azul 123', 'gabriel.sanchez@gmail.com', 'Instagram', '2024-01-25'),
(7, 'Juliana', 'Castro', '15369654', 'Av. Roja 456', 'juliana.castro@gmail.com', 'Facebook', '2024-01-26'),
(8, 'Daniel', 'Vega', '15133326', 'Ruta 32', 'daniel.vega@gmail.com', 'WhatsApp', '2024-01-27'),
(9, 'Laura', 'Duarte', '15112211', 'Calle Verde 789', 'laura.duarte@gmail.com', 'Mercado Libre', '2024-01-28'),
(10, 'Pablo', 'Fernández', '15431212', 'Barrio Norte 111', 'pablo.fernandez@gmail.com', 'Instagram', '2024-01-29');

-- Tabla de pagos
INSERT INTO pago (id_pago, metodo_pago) VALUES 
(1, 'Efectivo'), 
(2, 'Tarjeta Debito'), 
(3, 'Tarjeta Credito'), 
(4, 'Transferencia Electrónica');

-- Tabla de transporte
INSERT INTO transporte (id_transporte, nombre_empresa) VALUES 
(1, 'OCA'), 
(2, 'Credifin'), 
(3, 'Transporte Carolina'), 
(4, 'OCASA'), 
(5, 'Correo Argentino'), 
(6, 'Andreani');

-- Tabla de canales de venta
INSERT INTO canal_venta (id_canal, nombre_canal) VALUES 
(1, 'Instagram'), 
(2, 'Facebook'), 
(3, 'Mercado Libre'), 
(4, 'WhatsApp');

-- Tabla de empleados
INSERT INTO empleado (id_empleado, nombre, apellido, rol, telefono, email, fecha_ingreso, salario) VALUES 
(1, 'Joan', 'Diaz', 'Gerente', '15311466', 'juan.perez@gmail.com', '2020-01-15', 4000000.00), 
(2, 'Maria', 'Gomez', 'Administrativo', '15696666', 'maria.gomez@gmail.com', '2021-03-20', 1200000.00), 
(3, 'Carlos', 'Lopez', 'Operario', '15132523', 'carlos.lopez@gmail.com', '2022-06-10', 900000.00), 
(4, 'Ana', 'Martinez', 'Operario', '15448485', 'ana.martinez@gmail.com', '2024-01-25', 900000.00), 
(5, 'Luis', 'Rodriguez', 'Vendedor', '15200230', 'luis.rodriguez@gmail.com', '2022-02-12', 1000000.00);

-- Tabla de proveedores
INSERT INTO proveedor (id_proveedor, nombre_proveedor, telefono, email, direccion, ciudad) VALUES 
(1, 'Proveedor Textil SA', '15626266', 'contacto@textilsa.com', 'Av. Textil 123', 'Buenos Aires'), 
(2, 'Decoraciones Modernas SRL', '15899874', 'ventas@decoracionesmodernas.com', 'Calle Deco 456', 'Rosario'), 
(3, 'Distribuidora Hogar SRL', '15602122', 'info@hogarsrl.com', 'Ruta Nacional 789', 'Cordoba'),
(4, 'Manteleria SA', '15600012', 'info@Manteleriasa.com', 'Ruta Nacional 34', 'Rafaela');

-- Tabla de productos
INSERT INTO producto (id_producto, nombre_producto, descripcion) VALUES 
(1, 'Mantel','Manteles para mesas'),
(2, 'Individual', 'Individuales para comidas'), 
(3, 'Funda de silla', 'Fundas ajustables para sillas'), 
(4, 'Funda de Almohadon', 'Fundas suaves y decorativas'), 
(5, 'Panera', 'Paneras pequeñas para panificados'), 
(6, 'Cubre Sommier', 'Cubre sommier para cama ajustable'), 
(7, 'Cubre Volante', 'Fundas de volantes de automovile');

-- Tabla de color
INSERT INTO color (id_color, nombre_color) VALUES 
(1, 'Blanco'),
(2, 'Negro'), 
(3, 'Verde'), 
(4, 'Azul'), 
(5, 'Beige'), 
(6, 'Gris'), 
(7, 'Rojo'), 
(8, 'Transparente');


-- Tabla de materiales
INSERT INTO material (id_material, nombre_material, fk_color) VALUES 
(1, 'Cuerina', 1),
(2, 'Cuerina', 2), 
(3, 'Cuerina', 5), 
(4, 'PVC', 8), 
(5, 'Tela', 1),
(6, 'Tela', 2),
(7, 'Tela', 3),
(8, 'Tela', 4),
(9, 'Tela', 5),
(10, 'Cuero', 1),
(11, 'Cuero', 2),
(12, 'Hilo', 1),
(13, 'Hilo', 2),
(14, 'Hilo', 3);


-- Tabla de ventas
INSERT INTO venta (id_venta, fk_cliente, fk_empleado, fk_pago, fk_canal, fk_transporte, fecha_venta, estado, total) VALUES 
(1, 1, 5, 1, 1, 2, '2024-01-22', 'Finalizada', 41000.00), 
(2, 3, 5, 2, 2, 1, '2024-01-23', 'Pendiente', 16000.00),
(3, 6, 5, 2, 2, 3, '2024-01-24', 'Finalizada', 30000.00),
(4, 7, 5, 3, 1, 5, '2024-01-25', 'Finalizada', 48000.00),
(5, 8, 5, 4, 3, 6, '2024-01-26', 'Pendiente', 45000.00),
(6, 9, 5, 1, 4, 4, '2024-01-27', 'Pendiente', 52000.00),
(7, 10, 5, 2, 2, 3, '2024-01-28', 'Finalizada', 36000.00),
(8, 1, 5, 3, 1, 2, '2024-01-29', 'Cancelada', 1000.00),
(9, 2, 5, 4, 2, 1, '2024-01-30', 'Pendiente', 32000.00),
(10, 3, 5, 2, 3, 6, '2024-01-31', 'Finalizada', 47000.00);



-- Tabla de detalle de ventas
INSERT INTO detalle_venta (id_detalle_venta, fk_producto, fk_venta, cantidad, precio_unitario, subtotal) VALUES 
(1, 1, 1, 2, 20000.00, 40000.00),   -- Producto 1 en venta 1
(2, 2, 1, 1, 10000.00, 10000.00),     -- Producto 2 en venta 1
(3, 3, 2, 2, 8000.00, 16000.00),   -- Producto 3 en venta 2
(4, 4, 3, 1, 7000.00, 7000.00),   -- Producto 4 en venta 3
(5, 5, 3, 2, 15000.00, 30000.00),   -- Producto 5 en venta 3
(6, 6, 4, 1, 40000.00, 40000.00),   -- Producto 6 en venta 4
(7, 7, 4, 1, 8000.00, 8000.00),     -- Producto 7 en venta 4
(8, 6, 5, 1, 45000.00, 45000.00),   -- Producto 6 en venta 5
(9, 7, 6, 1, 18000.00, 18000.00),   -- Producto 7 en venta 6
(10, 1, 7, 1, 15000.00, 15000.00);  -- Producto 1 en venta 7


-- Tabla de historial de ventas
INSERT INTO historial_venta (id_historial_venta, fk_venta, fk_empleado, estado_anterior, estado_nuevo, fecha_cambio, comentario) VALUES 
(1, 1, 5, 'Pendiente', 'Finalizada', '2024-01-22', 'Cliente satisfecho'), 
(2, 2, 5, 'Pendiente', 'Cancelada', '2024-01-23', 'Falta de stock'),
(3, 3, 5, 'Pendiente', 'Finalizada', '2024-01-24', 'Pago confirmado.'),
(4, 4, 5, 'Pendiente', 'Finalizada', '2024-01-25', 'Producto despachado.'),
(5, 5, 5, 'Pendiente', 'Pendiente', '2024-01-26', 'Esperando pago.'),
(6, 6, 5, 'Pendiente', 'Pendiente', '2024-01-27', 'Cliente consultando.'),
(7, 7, 5, 'Pendiente', 'Finalizada', '2024-01-28', 'Venta completada.'),
(8, 8, 5, 'Pendiente', 'Cancelada', '2024-01-29', 'Cancelacion por cliente.'),
(9, 9, 5, 'Pendiente', 'Pendiente', '2024-01-30', 'Stock no disponible.'),
(10, 10, 5, 'Pendiente', 'Finalizada', '2024-01-31', 'Entrega realizada con exito.');

-- Tabla de productos-materiales (asociación) 
INSERT INTO producto_material (id_producto_material, fk_producto, fk_material, cantidad_requerida) VALUES 
(1, 1, 1, 2),
(2, 2, 3, 1),
(3, 3, 4, 5);


-- Tabla de stock-material
INSERT INTO stock_material (id_stock_material, fk_material, fk_empleado, fk_proveedor, cantidad_disponible, costo_unitario) VALUES 
(1, 1, 2, 1, 50, 6000.00),   -- 30% de 20000 (producto 1)
(2, 2, 2, 2, 100, 3000.00),  -- 30% de 10000 (producto 2)
(3, 3, 2, 3, 30, 2400.00),   -- 30% de 8000 (producto 3)
(4, 4, 2, 1, 40, 2100.00),   -- 30% de 7000 (producto 4)
(5, 5, 2, 2, 40, 4500.00),   -- 30% de 15000 (producto 5)
(6, 6, 2, 1, 25, 12000.00),  -- 30% de 40000 (producto 6)
(7, 7, 2, 2, 60, 5400.00);   -- 30% de 18000 (producto 7)


