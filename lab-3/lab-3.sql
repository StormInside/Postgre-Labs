--1
-- Locations of drivers

SELECT drivers.first_name, drivers.last_name, warehouses.location
FROM drivers
INNER JOIN vehicles ON drivers.vehicle_id=vehicles.id
INNER JOIN warehouses ON warehouse_id=warehouses.id
;

--2
-- Averege driver speed

SELECT drivers.first_name, drivers.last_name, vehicles.averege_speed
FROM drivers
INNER JOIN vehicles ON drivers.vehicle_id=vehicles.id
;

--3
-- Items in warehouses for drivers

SELECT drivers.first_name, drivers.last_name, warehouse_items.id
FROM drivers
INNER JOIN vehicles ON drivers.vehicle_id=vehicles.id
INNER JOIN warehouses ON warehouse_id=warehouses.id
INNER JOIN warehouse_items ON warehouse_items.warehouse_id=warehouses.id
;

--4
-- Items names for drivers

SELECT drivers.first_name, drivers.last_name, items.name
FROM drivers
INNER JOIN vehicles ON drivers.vehicle_id=vehicles.id
INNER JOIN warehouses ON warehouse_id=warehouses.id
INNER JOIN warehouse_items ON warehouse_items.warehouse_id=warehouses.id
INNER JOIN items ON item_id=items.id
;

--5
-- Cost for clients

SELECT clients.id, subscriptions.cost
FROM clients
INNER JOIN subscriptions ON subscription_id=subscriptions.id
;

--6
-- Items name for clients

SELECT clients.id, items.name
FROM clients
INNER JOIN subscriptions ON subscription_id=subscriptions.id
INNER JOIN items ON item_id=items.id
;

--7
-- Items name for clients and cost

SELECT clients.id, items.name, subscriptions.cost
FROM clients
INNER JOIN subscriptions ON subscription_id=subscriptions.id
INNER JOIN items ON item_id=items.id
;

--8
-- Warehouse items for clients

SELECT clients.id, warehouse_items.id
FROM clients
INNER JOIN subscriptions ON subscription_id=subscriptions.id
INNER JOIN items ON item_id=items.id
INNER JOIN warehouse_items ON warehouse_items.item_id=items.id
;

--9
-- Warehouses id for clients

SELECT clients.id, warehouses.id
FROM clients
INNER JOIN subscriptions ON subscription_id=subscriptions.id
INNER JOIN items ON item_id=items.id
INNER JOIN warehouse_items ON warehouse_items.item_id=items.id
INNER JOIN warehouses ON warehouse_items.warehouse_id=warehouses.id
;

--10
-- Warehouses locations for clients

SELECT clients.id, warehouses.location
FROM clients
INNER JOIN subscriptions ON subscription_id=subscriptions.id
INNER JOIN items ON item_id=items.id
INNER JOIN warehouse_items ON warehouse_items.item_id=items.id
INNER JOIN warehouses ON warehouse_items.warehouse_id=warehouses.id
;