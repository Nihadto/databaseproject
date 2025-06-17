create  database pal_tree_date_manger;
use pal_tree_date_manger;
create table worker (
    worker_id int primary key,
    fname varchar(50),
    lname varchar(50),
    phone varchar(20),
    salary decimal(10, 2)
);

create table farmer (
    farmer_id int primary key,
    name varchar(100),
    contact_info varchar(100),
    location varchar(100)
);

create table palm_tree (
    palm_tree_id int primary key,
    age int,
    health_status varchar(50),
    location varchar(100),
    farmer_id int,
    foreign key (farmer_id) references farmer(farmer_id)
);

create table harvest (
    harvest_id int primary key,
    harvest_date date,
    yield_kg decimal(10, 2),
    palm_tree_id int,
    foreign key (palm_tree_id) references palm_tree(palm_tree_id)
);

create table warehouse (
    warehouse_id int primary key,
    name varchar(100),
    location varchar(100)
);


create table sale (
    sale_id int primary key,
    quantity_kg decimal(10, 2),
    price_per_kg decimal(10, 2),
    total_price decimal(10, 2),
    customer_name varchar(100),
    date date,
    harvest_id int,
    foreign key (harvest_id) references harvest(harvest_id)
);

create table shipment (
    shipment_id int primary key,
    name varchar(100),
    location varchar(100)
);


create table soil_test (
    soil_test_id int primary key,
    test_date date,
    recommendation text,
    status varchar(50),
    palm_tree_id int,
    foreign key (palm_tree_id) references palm_tree(palm_tree_id)
);

create table irrigation (
    irrigation_id int primary key,
    time time,
    amount_liters decimal(10, 2),
    palm_tree_id int,
    foreign key (palm_tree_id) references palm_tree(palm_tree_id)
);

create table pests_disease (
    pests_disease_id int primary key,
    name varchar(100),
    date date,
    treatment text,
    palm_tree_id int,
    foreign key (palm_tree_id) references palm_tree(palm_tree_id)
);

create table fertilizer (
    fertilizer_id int primary key,
    name varchar(100),
    type varchar(50),
    quantity decimal(10, 2)
);



create table equipment (
    equipment_id int primary key,
    name varchar(100),
    purchase_date date,
    conditon varchar(50),
    farmer_id int,
    foreign key (farmer_id) references farmer(farmer_id)
);


