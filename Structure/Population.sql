

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
(10, 'Pablo', 'Fernández', '15431212', 'Barrio Norte 111', 'pablo.fernandez@gmail.com', 'Instagram', '2024-01-29')
(11, 'Marcela', 'García', '15522346', 'Calle Amarilla 12', 'marcela.garcia@gmail.com', 'Instagram', '2024-02-05'), 
(12, 'Esteban', 'Torres', '15622147', 'Av. Central 85', 'esteban.torres@gmail.com', 'Facebook', '2024-03-10'), 
(13, 'Florencia', 'Alvarez', '15213488', 'Pasaje Blanco 15', 'florencia.alvarez@gmail.com', 'WhatsApp', '2024-04-15'), 
(14, 'Hernán', 'Muñoz', '15789632', 'Ruta 45', 'hernan.munoz@gmail.com', 'Mercado Libre', '2024-05-22'), 
(15, 'Mónica', 'Silva', '15123487', 'Av. Verde 36', 'monica.silva@gmail.com', 'Instagram', '2024-08-09'), 
(16, 'Eduardo', 'Córdoba', '15422736', 'Calle Azul 78', 'eduardo.cordoba@gmail.com', 'Instagram', '2024-09-05'),
(17, 'Patricia', 'Villalba', '15331124', 'Barrio Este 91', 'patricia.villalba@gmail.com', 'Facebook', '2023-01-14'), 
(18, 'Gustavo', 'Ortega', '15156688', 'Av. Oeste 74', 'gustavo.ortega@gmail.com', 'Instagram', '2023-02-17'), 
(19, 'Romina', 'Romero', '15229977', 'Ruta Sur 29', 'romina.romero@gmail.com', 'WhatsApp', '2023-04-09'), 
(20, 'Leandro', 'Vázquez', '15544218', 'Calle Norte 36', 'leandro.vazquez@gmail.com', 'Instagram', '2023-06-22'), 
(21, 'Celeste', 'Navarro', '15127665', 'Boulevard Central 54', 'celeste.navarro@gmail.com', 'Facebook', '2023-07-18'), 
(22, 'Martín', 'Quiroga', '15655692', 'Ruta Norte 84', 'martin.quiroga@gmail.com', 'Instagram', '2023-09-05'), 
(23, 'Tamara', 'Figueroa', '15266723', 'Av. Azul 95', 'tamara.figueroa@gmail.com', 'Mercado Libre', '2023-10-16'), 
(24, 'Diego', 'Paredes', '15488941', 'Barrio Verde 14', 'diego.paredes@gmail.com', 'WhatsApp', '2023-12-21'),  
(25, 'Natalia', 'López', '15123489', 'Pasaje Central 23', 'natalia.lopez@gmail.com', 'Instagram', '2022-03-08'), 
(26, 'Federico', 'Ramos', '15632178', 'Ruta Amarilla 75', 'federico.ramos@gmail.com', 'Instagram', '2022-04-11'), 
(27, 'Lorena', 'Benítez', '15247613', 'Boulevard Verde 96', 'lorena.benitez@gmail.com', 'WhatsApp', '2022-07-20'), 
(28, 'Raúl', 'Molina', '15713266', 'Calle Roja 17', 'raul.molina@gmail.com', 'Mercado Libre', '2022-08-22'), 
(29, 'Claudia', 'Frías', '15341267', 'Ruta Oeste 41', 'claudia.frias@gmail.com', 'Facebook', '2022-11-10'), 
(30, 'Santiago', 'Brito', '15577632', 'Av. Este 56', 'santiago.brito@gmail.com', 'Instagram', '2022-12-25'),   
(31, 'Liliana', 'Vera', '15213489', 'Pasaje Azul 45', 'liliana.vera@gmail.com', 'Instagram', '2024-03-07'), 
(32, 'Franco', 'Ledesma', '15477866', 'Ruta Roja 31', 'franco.ledesma@gmail.com', 'Facebook', '2023-09-29'), 
(33, 'Elena', 'Campos', '15115523', 'Av. Norte 89', 'elena.campos@gmail.com', 'WhatsApp', '2024-05-03'), 
(34, 'Oscar', 'Moreno', '15388922', 'Boulevard Amarillo 77', 'oscar.moreno@gmail.com', 'Instagram', '2024-08-28'), 
(35, 'Alicia', 'Páez', '15633471', 'Ruta Verde 18', 'alicia.paez@gmail.com', 'Instagram', '2024-09-10'), 
(36, 'Joaquín', 'Rivera', '15455231', 'Calle Blanca 65', 'joaquin.rivera@gmail.com', 'Mercado Libre', '2023-07-12'), 
(37, 'Rocío', 'Salazar', '15231876', 'Barrio Azul 71', 'rocio.salazar@gmail.com', 'Instagram', '2023-02-21'), 
(38, 'Ezequiel', 'Méndez', '15787634', 'Av. Central 32', 'ezequiel.mendez@gmail.com', 'Facebook', '2023-10-11');

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
(2, 3, 5, 2, 2, 1, '2024-01-23', 'Finalizada', 16000.00),
(3, 6, 5, 2, 2, 3, '2024-01-24', 'Finalizada', 30000.00),
(4, 7, 5, 3, 1, 5, '2024-01-25', 'Finalizada', 48000.00),
(5, 8, 5, 4, 3, 6, '2024-01-26', 'Finalizada', 45000.00),
(6, 9, 5, 1, 4, 4, '2024-01-27', 'Finalizada', 52000.00),
(7, 10, 5, 2, 2, 3, '2024-01-28', 'Finalizada', 36000.00),
(8, 1, 5, 3, 1, 2, '2024-01-29', 'Finalizada', 1000.00),
(9, 2, 5, 4, 2, 1, '2024-01-30', 'Finalizada', 32000.00),
(10, 3, 5, 2, 3, 6, '2024-01-31', 'Finalizada', 47000.00),
(11, 1, 5, 1, 1, 2, '2024-02-15', 'Finalizada', 28000.00), 
(12, 5, 5, 2, 1, 3, '2024-03-10', 'Cancelada', 45000.00),
(13, 6, 5, 3, 3, 4, '2024-03-20', 'Finalizada', 33000.00),
(14, 4, 5, 4, 4, 1, '2024-04-12', 'Finalizada', 39000.00),
(15, 7, 5, 1, 1, 5, '2024-04-25', 'Finalizada', 52000.00),
(16, 8, 5, 2, 3, 6, '2024-05-15', 'Finalizada', 47000.00),
(17, 10, 5, 1, 4, 4, '2024-08-22', 'Pendiente', 55000.00),
(18, 1, 5, 4, 2, 2, '2024-09-05', 'Finalizada', 29000.00),
(19, 3, 5, 3, 1, 1, '2024-09-12', 'Pendiente', 32000.00),
(20, 2, 5, 2, 4, 5, '2024-09-30', 'Pendiente', 23000.00),
(21, 4, 5, 1, 3, 4, '2023-01-18', 'Finalizada', 31000.00),
(22, 5, 5, 2, 1, 3, '2023-02-14', 'Finalizada', 36000.00),
(23, 7, 5, 3, 4, 6, '2023-04-23', 'Cancelada', 44000.00),
(24, 8, 5, 4, 2, 2, '2023-06-12', 'Finalizada', 27000.00),
(25, 9, 5, 1, 1, 5, '2023-07-28', 'Finalizada', 45000.00),
(26, 10, 5, 2, 3, 3, '2023-09-17', 'Cancelada', 39000.00),
(27, 1, 5, 3, 4, 6, '2023-10-03', 'Finalizada', 22000.00),
(28, 3, 5, 1, 2, 1, '2023-12-09', 'Finalizada', 52000.00),
(29, 4, 5, 4, 1, 2, '2022-03-10', 'Finalizada', 41000.00),
(30, 6, 5, 3, 3, 5, '2022-04-15', 'Finalizada', 30000.00),
(31, 8, 5, 2, 4, 4, '2022-07-22', 'Finalizada', 35000.00),
(32, 9, 5, 1, 2, 3, '2022-08-29', 'Finalizada', 40000.00),
(33, 10, 5, 4, 1, 6, '2022-11-12', 'Cancelada', 48000.00),
(34, 1, 5, 3, 3, 1, '2022-12-21', 'Finalizada', 53000.00),
(35, 1, 5, 1, 1, 3, '2024-02-20', 'Finalizada', 31000.00),
(36, 2, 5, 3, 3, 6, '2024-04-30', 'Pendiente', 28000.00),
(37, 3, 5, 4, 4, 5, '2023-11-11', 'Finalizada', 37000.00),
(38, 7, 5, 2, 2, 1, '2023-05-20', 'Finalizada', 21000.00),
(39, 8, 5, 3, 4, 2, '2024-06-25', 'Finalizada', 40000.00),
(40, 5, 5, 2, 1, 6, '2023-03-10', 'Finalizada', 43000.00),
(41, 6, 5, 1, 4, 3, '2022-08-08', 'Finalizada', 47000.00),
(42, 4, 5, 3, 2, 2, '2024-07-15', 'Pendiente', 34000.00),
(43, 9, 5, 4, 3, 5, '2023-12-30', 'Cancelada', 51000.00),
(44, 10, 5, 1, 1, 1, '2022-11-10', 'Finalizada', 29000.00),
(45, 1, 5, 3, 3, 4, '2024-08-08', 'Pendiente', 31000.00),
(46, 2, 5, 2, 4, 5, '2023-09-15', 'Finalizada', 39000.00),
(47, 6, 5, 1, 1, 6, '2024-05-11', 'Finalizada', 41000.00),
(48, 7, 5, 4, 2, 3, '2023-10-29', 'Pendiente', 29000.00),
(49, 8, 5, 2, 4, 1, '2024-06-19', 'Finalizada', 36000.00),
(50, 9, 5, 3, 3, 6, '2023-11-14', 'Finalizada', 27000.00),
(51, 5, 5, 1, 1, 5, '2022-12-22', 'Finalizada', 43000.00),
(52, 4, 5, 4, 3, 2, '2024-09-30', 'Finalizada', 47000.00);

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
(10, 1, 7, 1, 15000.00, 15000.00),  -- Producto 1 en venta 7
(11, 2, 8, 2, 10000.00, 20000.00),   -- Producto 2 en venta 8
(12, 3, 8, 1, 7000.00, 7000.00),     -- Producto 3 en venta 8
(13, 1, 9, 3, 12000.00, 36000.00),   -- Producto 1 en venta 9
(14, 4, 10, 2, 8000.00, 16000.00),   -- Producto 4 en venta 10
(15, 5, 10, 1, 15000.00, 15000.00),  -- Producto 5 en venta 10
(16, 6, 11, 2, 5000.00, 10000.00),   -- Producto 6 en venta 11
(17, 7, 12, 1, 18000.00, 18000.00),  -- Producto 7 en venta 12
(18, 3, 13, 1, 12000.00, 12000.00),  -- Producto 3 en venta 13
(19, 1, 13, 3, 10000.00, 30000.00),  -- Producto 1 en venta 13
(20, 8, 14, 1, 20000.00, 20000.00),  -- Producto 8 en venta 14
(21, 9, 15, 2, 9000.00, 18000.00),   -- Producto 9 en venta 15
(22, 10, 16, 4, 5000.00, 20000.00),  -- Producto 10 en venta 16
(23, 4, 17, 2, 8000.00, 16000.00),   -- Producto 4 en venta 17
(24, 2, 18, 3, 10000.00, 30000.00),  -- Producto 2 en venta 18
(25, 6, 18, 1, 12000.00, 12000.00),  -- Producto 6 en venta 18
(26, 3, 19, 1, 7000.00, 7000.00),    -- Producto 3 en venta 19
(27, 7, 19, 2, 15000.00, 30000.00),  -- Producto 7 en venta 19
(28, 9, 20, 1, 18000.00, 18000.00),  -- Producto 9 en venta 20
(29, 5, 21, 1, 15000.00, 15000.00),  -- Producto 5 en venta 21
(30, 1, 22, 4, 10000.00, 40000.00),  -- Producto 1 en venta 22
(31, 10, 23, 2, 7000.00, 14000.00),  -- Producto 10 en venta 23
(32, 4, 24, 1, 8000.00, 8000.00),    -- Producto 4 en venta 24
(33, 2, 25, 3, 10000.00, 30000.00),  -- Producto 2 en venta 25
(34, 6, 26, 1, 12000.00, 12000.00),  -- Producto 6 en venta 26
(35, 3, 27, 2, 7000.00, 14000.00),   -- Producto 3 en venta 27
(36, 9, 28, 1, 9000.00, 9000.00),    -- Producto 9 en venta 28
(37, 5, 29, 4, 15000.00, 60000.00),  -- Producto 5 en venta 29
(38, 8, 30, 2, 20000.00, 40000.00),  -- Producto 8 en venta 30
(39, 10, 31, 1, 5000.00, 5000.00),   -- Producto 10 en venta 31
(40, 7, 32, 3, 12000.00, 36000.00),  -- Producto 7 en venta 32
(41, 1, 33, 5, 10000.00, 50000.00),  -- Producto 1 en venta 33
(42, 2, 34, 1, 12000.00, 12000.00),  -- Producto 2 en venta 34
(43, 3, 35, 2, 7000.00, 14000.00),   -- Producto 3 en venta 35
(44, 6, 36, 4, 8000.00, 32000.00),   -- Producto 6 en venta 36
(45, 8, 37, 1, 20000.00, 20000.00),  -- Producto 8 en venta 37
(46, 10, 38, 3, 7000.00, 21000.00),  -- Producto 10 en venta 38
(47, 9, 39, 1, 18000.00, 18000.00),  -- Producto 9 en venta 39
(48, 5, 40, 1, 15000.00, 15000.00),  -- Producto 5 en venta 40
(49, 3, 41, 2, 7000.00, 14000.00),   -- Producto 3 en venta 41
(50, 6, 42, 3, 12000.00, 36000.00),  -- Producto 6 en venta 42
(51, 2, 43, 1, 10000.00, 10000.00),  -- Producto 2 en venta 43
(52, 1, 44, 4, 10000.00, 40000.00);  -- Producto 1 en venta 44

-- Tabla de historial de ventas
INSERT INTO historial_venta (id_historial_venta, fk_venta, fk_empleado, estado_anterior, estado_nuevo, fecha_cambio, comentario) VALUES 
(1, 1, 5, 'Pendiente', 'Finalizada', '2024-01-22', 'Cliente satisfecho'),
(2, 2, 5, 'Pendiente', 'Finalizada', '2024-01-23', 'Cliente satisfecho'),
(3, 3, 5, 'Pendiente', 'Finalizada', '2024-01-24', 'Cliente satisfecho'),
(4, 4, 5, 'Pendiente', 'Finalizada', '2024-01-25', 'Cliente satisfecho'),
(5, 5, 5, 'Pendiente', 'Finalizada', '2024-01-26', 'Cliente satisfecho'),
(6, 6, 5, 'Pendiente', 'Finalizada', '2024-01-27', 'Cliente satisfecho'),
(7, 7, 5, 'Pendiente', 'Finalizada', '2024-01-28', 'Cliente satisfecho'),
(8, 12, 5, 'Pendiente', 'Cancelada', '2024-03-10', 'Cliente solicitó la cancelación'),
(9, 17, 5, 'Pendiente', 'Pendiente', '2024-08-22', 'En espera de pago'),
(10, 23, 5, 'Pendiente', 'Cancelada', '2023-04-23', 'Cliente solicitó la cancelación'),
(11, 26, 5, 'Pendiente', 'Cancelada', '2023-09-17', 'Cliente solicitó la cancelación'),
(12, 33, 5, 'Pendiente', 'Cancelada', '2022-11-12', 'Falta de stock'),
(13, 43, 5, 'Pendiente', 'Cancelada', '2023-12-30', 'Falta de stock'),
(14, 19, 5, 'Pendiente', 'Pendiente', '2024-09-12', 'En espera de pago'),
(15, 42, 5, 'Pendiente', 'Pendiente', '2024-07-15', 'En espera de pago'),
(16, 45, 5, 'Pendiente', 'Pendiente', '2024-08-08', 'En espera de pago'),
(17, 36, 5, 'Pendiente', 'Pendiente', '2024-04-30', 'En espera de pago'),
(18, 48, 5, 'Pendiente', 'Pendiente', '2023-10-29', 'En espera de pago'),
(19, 52, 5, 'Pendiente', 'Finalizada', '2024-09-30', 'Cliente satisfecho'),
(20, 39, 5, 'Pendiente', 'Finalizada', '2024-06-25', 'Cliente satisfecho');
;

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


