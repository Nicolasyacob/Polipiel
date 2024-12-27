![Portada](https://github.com/Nicolasyacob/Segunda_Entrega_SQL/blob/main/Imagen.jpeg)

### README - Base de Datos para "Polipiel" - Segunda Entrega ###

Descripción General 📋
El emprendimiento familiar "Polipiel" se dedica a la fabricación y venta de productos personalizados y estándar como manteles, fundas de sillas, paneras, cubre sommier, y otros artículos de decoración, empleando materiales como cuerina, ecocuero, PVC, entre otros. Las ventas se realizan principalmente a través de redes sociales, sitios de e-commerce y WhatsApp. La empresa adquiere materia prima de proveedores locales para su fabricación, y distribuye los productos terminados mediante transportes a sus clientes.

Este modelo de base de datos busca organizar y optimizar la gestión de clientes, ventas, productos, materias primas y empleados para facilitar el manejo y control de la información del emprendimiento.

### DER en Workbench ###
![image](https://github.com/user-attachments/assets/9d66b507-3cc5-477e-8c6f-c7f9a56d045b)

## TABLAS

### 1. **cliente**
   - **Descripción**: Almacena información de los clientes.
   - **Columnas**:
     - `id_cliente`: INT (PK, AUTO_INCREMENT) - Identificador único de cada cliente.
     - `nombre`: VARCHAR(200) - Nombre del cliente.
     - `apellido`: VARCHAR(200) - Apellido del cliente.
     - `telefono`: VARCHAR(20) - Teléfono del cliente.
     - `direccion`: VARCHAR(200) - Dirección del cliente.
     - `email`: VARCHAR(200) - Correo electrónico del cliente.
     - `red_social`: VARCHAR(200) - Red social del cliente.
     - `fecha_registro`: DATE - Fecha de registro del cliente.
     
### 2. **pago**
   - **Descripción**: Métodos de pago disponibles.
   - **Columnas**:
     - `id_pago`: INT (PK, AUTO_INCREMENT) - Identificador único del método de pago.
     - `metodo_pago`: VARCHAR(200) - Nombre del método de pago.

### 3. **transporte**
   - **Descripción**: Información de las empresas de transporte.
   - **Columnas**:
     - `id_transporte`: INT (PK, AUTO_INCREMENT) - Identificador único del transporte.
     - `nombre_empresa`: VARCHAR(200) - Nombre de la empresa de transporte.


### 4. **canal_venta**
   - **Descripción**: Información de los canales de venta.
   - **Columnas**:
     - `id_canal`: INT (PK, AUTO_INCREMENT) - Identificador único del canal de venta.
     - `nombre_canal`: VARCHAR(200) - Nombre del canal de venta.

### 5. **empleados**
   - **Descripción**: Almacena datos de los empleados.
   - **Columnas**:
     - `id_empleado`: INT (PK, AUTO_INCREMENT) - Identificador único del empleado.
     - `nombre`: VARCHAR(100) - Nombre del empleado.
     - `apellido`: VARCHAR(100) - Apellido del empleado.
     - `rol`: VARCHAR(50) - Rol del empleado en la empresa.
     - `telefono`: VARCHAR(20) - Teléfono del empleado.
     - `email`: VARCHAR(100) - Correo electrónico del empleado.
     - `fecha_ingreso`: DATE - Fecha de ingreso del empleado.
     - `salario`: DECIMAL(12,2) - Salario del empleado.

### 6. **proveedor**
   - **Descripción**: Información de los proveedores.
   - **Columnas**:
     - `id_proveedor`: INT (PK, AUTO_INCREMENT) - Identificador único del proveedor.
     - `nombre_proveedor`: VARCHAR(200) - Nombre del proveedor.
     - `telefono`: VARCHAR(50) - Teléfono del proveedor.
     - `email`: VARCHAR(50) UNIQUE - Correo electrónico del proveedor.
     - `direccion`: VARCHAR(50) - Dirección del proveedor.
     - `ciudad`: VARCHAR(50) - Ciudad del proveedor.

### 7. **producto**
   - **Descripción**: Almacena información de los productos.
   - **Columnas**:
     - `id_producto`: INT (PK, AUTO_INCREMENT) - Identificador único del producto.
     - `nombre_producto`: VARCHAR(200) - Nombre del producto.
     - `descripcion`: TEXT - Descripción del producto.

### 8. **color**
   - **Descripción**: Almacena información de los colores.
   - **Columnas**:
     - `id_color`: INT (PK, AUTO_INCREMENT) - Identificador único del color.
     - `nombre_color`: VARCHAR(50) - Nombre del color.

### 9. **material**
   - **Descripción**: Almacena información de los materiales.
   - **Columnas**:
     - `id_material`: INT (PK, AUTO_INCREMENT) - Identificador único del material.
     - `nombre_material`: VARCHAR(100) - Nombre del material.
     - `fk_color`: INT (FK) - Identificador único del color.

### 10. **venta**
   - **Descripción**: Información de las ventas realizadas.
   - **Columnas**:
     - `id_venta`: INT (PK, AUTO_INCREMENT) - Identificador único de la venta.
     - `fk_cliente`: INT (FK) - Referencia al cliente.
     - `fk_empleado`: INT (FK) - Referencia al empleado.
     - `fk_pago`: INT (FK) - Referencia al método de pago.
     - `fk_canal`: INT (FK) - Referencia al canal de venta.
     - `fk_transporte`: INT (FK) - Referencia al transporte.
     - `fecha_venta`: DATE - Fecha de la venta.
     - `estado`: VARCHAR(50) - Estado de la venta.
     - `total`: DECIMAL(10,2) - Total de la venta.

### 11. **detalle_venta**
   - **Descripción**: Detalles de los productos vendidos en cada venta.
   - **Columnas**:
     - `id_detalle_venta`: INT (PK, AUTO_INCREMENT) - Identificador único del detalle de venta.
     - `fk_producto`: INT (FK) - Referencia al producto.
     - `fk_venta`: INT (FK) - Referencia a la venta.
     - `cantidad`: INT - Cantidad de producto vendido.
     - `precio_unitario`: DECIMAL(10,2) - Precio unitario del producto.
     - `subtotal`: DECIMAL(10,2) - Subtotal de la venta de ese producto.

### 12. **historial_venta**
   - **Descripción**: Registro del historial de cambios en el estado de las ventas.
   - **Columnas**:
     - `id_historial_venta`: INT (PK, AUTO_INCREMENT) - Identificador único del historial.
     - `fk_venta`: INT (FK) - Referencia a la venta.
     - `fk_empleado`: INT (FK) - Referencia al empleado que hizo el cambio.
     - `estado_anterior`: VARCHAR(50) - Estado anterior de la venta.
     - `estado_nuevo`: VARCHAR(50) - Nuevo estado de la venta.
     - `fecha_cambio`: DATE - Fecha del cambio de estado.
     - `comentario`: TEXT - Comentarios sobre el cambio.

### 13. **producto_material**
   - **Descripción**: Almacena la relación entre productos y materiales requeridos.
   - **Columnas**:
     - `id_producto_material`: INT (PK, AUTO_INCREMENT) - Identificador único.
     - `fk_producto`: INT (FK) - Referencia al producto.
     - `fk_material`: INT (FK) - Referencia al material.
     - `cantidad_requerida`: INT - Cantidad requerida de materiales usados para el producto.

### 14. **stock_materiales**
   - **Descripción**: Información del inventario de materiales.
   - **Columnas**:
     - `id_stock_materiales`: INT (PK, AUTO_INCREMENT) - Identificador único del stock del material.
     - `fk_material`: INT (FK) - Referencia al material.
     - `fk_empleado`: INT (FK) - Empleado encargado.
     - `fk_proveedor`: INT (FK) - Proveedor de material.
     - `cantidad_disponible`: INT - Cantidad disponible en stock.
     - `costo_unitario`: DECIMAL(12,2) - Costo unitario del material.

## Relaciones
Cada cliente puede realizar múltiples ventas, las cuales son gestionadas por empleados y están vinculadas a un método de pago específico, un canal de venta y una opción de transporte. Los productos vendidos en cada venta y la cantidad requerida de materiales se especifican en la tabla de detalle de ventas y se gestionan a través de la tabla de producto-material. Los materiales necesarios para la fabricación de los productos están relacionados con sus respectivos colores. El inventario de materiales, incluyendo su cantidad disponible y costo unitario, se gestiona en la tabla de stock-materiales, que también rastrea la relación con el empleado responsable y el proveedor del material. Además, el historial de ventas lleva un registro de los cambios de estado de cada venta, efectuados por los empleados, proporcionando un seguimiento detallado de todas las transacciones.

## Problemática Resuelta
Este modelo facilita la gestión integral de la empresa, permitiendo:
- Registrar clientes y transacciones de ventas con sus detalles, optimizando la trazabilidad y el historial de cambios.
- Controlar el stock de materiales y productos, incluyendo las relaciones con los proveedores y empleados responsables.
- Analizar ventas por canales y métodos de pago, obteniendo una mejor visión sobre el rendimiento comercial de la empresa.

## Vistas, Funciones, Procedimientos y Triggers

## Vistas Implementadas
**1. Vista:** Ventas Totales por Cliente

**Descripción**: Esta vista consolida la información de las ventas realizadas por cliente, mostrando el total acumulado de las ventas asociadas a cada uno.

**Propósito**: Permitir un análisis detallado del rendimiento de las ventas por cliente, útil para identificar a los clientes más frecuentes o con mayores contribuciones.

**CODIGO:**
CREATE VIEW polipiel.ventas_totales_por_cliente AS
SELECT 
    c.id_cliente,
    c.nombre,
    c.apellido,
    SUM(v.total) AS total_ventas
FROM polipiel.cliente c
JOIN polipiel.venta v ON c.id_cliente = v.fk_cliente
GROUP BY c.id_cliente, c.nombre, c.apellido;

**2.Vista:** Ventas por Canal de Venta

**Descripción:** Muestra el total de ventas agrupadas por cada canal de venta, incluyendo la cantidad de ventas y el monto total generado por cada uno.

**Propósito:** Facilitar el análisis de los canales de venta más rentables y con mayor cantidad de transacciones.

**CODIGO:** 
CREATE VIEW polipiel.ventas_por_canal AS
SELECT 
    cv.nombre_canal,
    COUNT(v.id_venta) AS cantidad_ventas,
    SUM(v.total) AS total_ventas
FROM polipiel.venta v
JOIN polipiel.canal_venta cv ON v.fk_canal = cv.id_canal
GROUP BY cv.nombre_canal;

## Funciones Implementadas
**1. Función:** Validar Formato de Email

**Descripción:** Verifica si el correo electrónico de un cliente está en un formato válido.

**Propósito:** Garantizar que los correos electrónicos registrados sean correctos, evitando datos incorrectos o inválidos.

**CODIGO:**
DELIMITER //
CREATE FUNCTION polipiel.fx_validar_email(email VARCHAR(200))
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE resultado BOOLEAN;
    SET resultado = (email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');
    RETURN resultado;
END //
DELIMITER ;

**EJEMPLO DE USO:**
SELECT 
    nombre, 
    email, 
    polipiel.fx_validar_email(email) AS email_valido
FROM polipiel.cliente;

**2. Función:** Validar Disponibilidad de Materiales

**Descripción:** Comprueba si existe suficiente stock de un material específico para cubrir una cantidad requerida.

**Propósito:** Ayudar a evitar la generación de órdenes para productos que no pueden fabricarse por falta de materiales.

**CODIGO:**
DELIMITER //
CREATE FUNCTION polipiel.fx_validar_stock_material(fk_material INT, cantidad_requerida INT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE disponible INT;
    SELECT cantidad_disponible INTO disponible 
    FROM stock_material 
    WHERE stock_material.fk_material = fk_material;
    RETURN disponible >= cantidad_requerida;
END //
DELIMITER ;

**EJEMPLO DE USO:**
SELECT 
    fk_material, 
    cantidad_requerida, 
    polipiel.fx_validar_stock_material(fk_material, cantidad_requerida) AS suficiente_stock
FROM polipiel.producto_material;

## Procedimientos Implementadas

**1. Procedimiento:** Actualizar Precios de Detalle de Venta

**Descripción:** Permite aplicar incrementos o rebajas porcentuales a los precios unitarios de los productos en los detalles de ventas. También actualiza automáticamente los subtotales y registra el porcentaje aplicado.

**Propósito:** Facilitar el mantenimiento de precios al reflejar ajustes globales en los valores de los productos, asegurando la consistencia de los subtotales.

**CÓDIGO:**
DROP PROCEDURE IF EXISTS polipiel.sp_actualizar_precios_detalle_venta;

DELIMITER //
CREATE PROCEDURE polipiel.sp_actualizar_precios_detalle_venta(
    IN porcentaje DECIMAL(5,2)
)
BEGIN
    IF NOT EXISTS (
        SELECT * 
        FROM INFORMATION_SCHEMA.COLUMNS 
        WHERE TABLE_NAME='detalle_venta' 
        AND COLUMN_NAME='porcentaje_aplicado'
    ) THEN
        ALTER TABLE polipiel.detalle_venta ADD porcentaje_aplicado DECIMAL(5,2);
    END IF;

    UPDATE polipiel.detalle_venta
    SET precio_unitario = ROUND(precio_unitario * (1 + (porcentaje / 100)), 2),
        subtotal = ROUND(cantidad * (precio_unitario * (1 + (porcentaje / 100))), 2),
        porcentaje_aplicado = porcentaje;
END //
DELIMITER ;

**EJEMPLO DE USO:**
CALL polipiel.sp_actualizar_precios_detalle_venta(10); -- Incrementa precios en 10%
CALL polipiel.sp_actualizar_precios_detalle_venta(-5); -- Rebaja precios en 5%

**2. Procedimiento:** Generar Reporte de Ventas Mensual

**Descripción:** Genera un informe con las ventas realizadas en un mes específico, desglosadas por producto. Incluye la cantidad total vendida, el monto total de ventas y las fechas de venta.

**Propósito:** Proveer un resumen mensual que ayude en el análisis de desempeño de productos y temporadas.

**CÓDIGO:**
DROP PROCEDURE IF EXISTS polipiel.reporte_ventas_mensual;

DELIMITER //

CREATE PROCEDURE polipiel.reporte_ventas_mensual(
    IN año INT,
    IN mes INT
)
BEGIN
    SELECT 
        p.nombre_producto,
        SUM(dv.cantidad) AS total_cantidad_vendida,
        SUM(dv.subtotal) AS total_ventas,
        GROUP_CONCAT(DISTINCT DATE(v.fecha_venta) ORDER BY v.fecha_venta ASC SEPARATOR ', ') AS fechas_ventas
    FROM 
        polipiel.venta v
    JOIN 
        polipiel.detalle_venta dv ON v.id_venta = dv.fk_venta
    JOIN 
        polipiel.producto p ON dv.fk_producto = p.id_producto
    WHERE 
        YEAR(v.fecha_venta) = año AND MONTH(v.fecha_venta) = mes
    GROUP BY 
        p.nombre_producto;
END //
DELIMITER ;

**EJEMPLO DE USO:**
CALL polipiel.reporte_ventas_mensual(2024, 1); -- Genera reporte para enero de 2024

## Triggers Implementados

**1. Trigger:** Registrar Cambios en el Estado de Ventas

**Descripción:** Registra en una tabla de auditoría (historial_venta) cada cambio en el estado de una venta, almacenando el estado anterior, el nuevo estado, y otros datos relevantes como el empleado que realizó la acción y la fecha del cambio.

**Propósito:** Proveer un historial detallado para auditar los cambios en las ventas y garantizar trazabilidad.

**CÓDIGO:**
DROP TRIGGER IF EXISTS polipiel.registrar_historial_venta;

DELIMITER //

CREATE TRIGGER polipiel.registrar_historial_venta
AFTER UPDATE ON polipiel.venta
FOR EACH ROW
BEGIN
    IF NEW.estado != OLD.estado THEN
        INSERT INTO polipiel.historial_venta (fk_venta, fk_empleado, estado_anterior, estado_nuevo, fecha_cambio, comentario)
        VALUES (NEW.id_venta, NEW.fk_empleado, OLD.estado, NEW.estado, NOW(), 'Estado actualizado');
    END IF;
END //
DELIMITER ;

**EJEMPLO DE USO:**
INSERT INTO polipiel.venta (fk_cliente, fk_empleado, fk_pago, fk_canal, fk_transporte, fecha_venta, estado, total)
VALUES (5, 5, 1, 1, 1, '2024-11-27', 'Pendiente', 150000.00);

**ACTUALIZAR EL ESTADO DE LA VENTA:**
UPDATE polipiel.venta
SET estado = 'Enviado'
WHERE id_venta = 11; -- Usar el ID correspondiente

**CONSULTAR EL HISTORIAL DE LA VENTA:**
SELECT * 
FROM polipiel.historial_venta 
WHERE fk_venta = 11;

**2. Trigger:**
**Descripción:** Este trigger asegura que antes de insertar un registro en la tabla detalle_venta, la cantidad solicitada del producto no exceda la cantidad disponible en el stock de materiales necesarios para fabricarlo

**CÓDIGO:**
DELIMITER //

CREATE TRIGGER validar_stock_simple
BEFORE INSERT ON detalle_venta
FOR EACH ROW
BEGIN
    DECLARE stock_disponible INT;

    -- Obtener la cantidad disponible del material asociado al producto
    SELECT SUM(sm.cantidad_disponible) INTO stock_disponible
    FROM stock_material sm
    JOIN producto_material pm ON sm.fk_material = pm.fk_material
    WHERE pm.fk_producto = NEW.fk_producto;

    -- Validar que la cantidad disponible sea suficiente
    IF stock_disponible < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para el producto';
    END IF;
END //

DELIMITER ;

**EJEMPLO DE USO:**
INSERT INTO detalle_venta (fk_venta, fk_producto, cantidad, precio_unitario, subtotal)
VALUES (1, 1, 5, 1000.00, 5000.00); 

**1. Insertar un Detalle de Venta con Stock Suficiente**
INSERT INTO detalle_venta (fk_venta, fk_producto, cantidad, precio_unitario, subtotal)
VALUES (1, 1, 5, 1000.00, 5000.00); 

**2. Insertar un Detalle de Venta con Stock Insuficiente**
INSERT INTO detalle_venta (fk_venta, fk_producto, cantidad, precio_unitario, subtotal)
VALUES (1, 1, 1000, 1000.00, 1000000.00); -- Ajustar valores según el stock actual

**Resultado esperado: El sistema lanza el error: Stock insuficiente para el producto, y la inserción es cancelada.**




