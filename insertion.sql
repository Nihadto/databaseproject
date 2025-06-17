use pal_tree_date_manger;
-- insert into worker table
insert into worker (worker_id, fname, lname, phone, salary) values
(1, 'hani', 'maali', '0599990000', 1200.00),
(2, 'khader', 'yousef', '0599990001', 1300.00),
(3, 'laith', 'saleh', '0599990002', 1100.00),
(4, 'omar', 'fayez', '0599990003', 1250.00),
(5, 'mostafa', 'mohammed', '0599990004', 1350.00);

-- insert into farmer table
insert into farmer (farmer_id, name, contact_info, location) values
(1, 'nihad', '0599990000', 'jenin'),
(2, 'ahmad', '0599990001', 'tubas'),
(3, 'ameer', '0599990002', 'nablus'),
(4, 'osama', '0599990003', 'jericho'),
(5, 'khalid', '0599990004', 'tulkarm');

-- insert into palm_tree table
insert into palm_tree (palm_tree_id, age, health_status, location, farmer_id) values
(1, 5, 'healthy', 'field 1', 1),
(2, 7, 'fair', 'field 2', 2),
(3, 4, 'excellent', 'field 3', 3),
(4, 6, 'poor', 'field 4', 4),
(5, 3, 'healthy', 'field 5', 5);

-- insert into harvest table
insert into harvest (harvest_id, harvest_date, yield_kg, palm_tree_id) values
(1, '2025-06-01', 100.00, 1),
(2, '2025-06-02', 150.50, 2),
(3, '2025-06-03', 130.75, 3),
(4, '2025-06-04', 90.00, 4),
(5, '2025-06-05', 110.25, 5);

-- insert into warehouse table
insert into warehouse (warehouse_id, name, location) values
(1, 'main warehouse', 'jenin'),
(2, 'north storage', 'tubas');

-- insert into sale table
insert into sale (sale_id, quantity_kg, price_per_kg, total_price, customer_name, date, harvest_id) values
(1, 50.00, 2.5, 125.00, 'customer1', '2025-06-06', 1),
(2, 40.00, 2.5, 100.00, 'customer2', '2025-06-07', 2);

-- insert into shipment table
insert into shipment (shipment_id, name, location) values
(1, 'shipment a', 'jericho'),
(2, 'shipment b', 'ramallah');

-- insert into soil_test table
insert into soil_test (soil_test_id, test_date, recommendation, status, palm_tree_id) values
(1, '2025-05-10', 'add compost', 'done', 1),
(2, '2025-05-11', 'improve drainage', 'pending', 2);

-- insert into irrigation table
insert into irrigation (irrigation_id, time, amount_liters, palm_tree_id) values
(1, '08:00:00', 20.50, 1),
(2, '09:00:00', 25.00, 2);

-- insert into pests_disease table
insert into pests_disease (pests_disease_id, name, date, treatment, palm_tree_id) values
(1, 'red weevil', '2025-04-20', 'pesticide x', 1),
(2, 'fungus', '2025-04-21', 'fungicide y', 2);

-- insert into fertilizer table
insert into fertilizer (fertilizer_id, name, type, quantity) values
(1, 'fertilizer a', 'organic', 10.00),
(2, 'fertilizer b', 'chemical', 5.00);

-- insert into equipment table
insert into equipment (equipment_id, name, purchase_date, conditon, farmer_id) values
(1, 'tractor', '2023-01-10', 'good', 1),
(2, 'sprayer', '2023-05-12', 'excellent', 2);



