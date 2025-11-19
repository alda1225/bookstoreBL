/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- 1. Tablas sin dependencias
:r .\dbo.country.Table.sql
:r .\dbo.address_status.Table.sql
:r .\dbo.book_language.Table.sql
:r .\dbo.publisher.Table.sql
:r .\dbo.order_status.Table.sql
:r .\dbo.shipping_method.Table.sql
:r .\dbo.author.Table.sql

-- 2. Tablas base
:r .\dbo.address.Table.sql
:r .\dbo.customer.Table.sql
:r .\dbo.book.Table.sql

-- 3. Tablas dependientes
:r .\dbo.customer_address.Table.sql

-- 4. Tablas puente y órdenes
:r .\dbo.book_author.Table.sql
:r .\dbo.cust_order.Table.sql
:r .\dbo.order_line.Table.sql
:r .\dbo.order_history.Table.sql

