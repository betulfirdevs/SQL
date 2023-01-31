

CREATE DATABASE Charlie_Chocolate_Factory

CREATE TABLE Product

(prod_name VARCHAR(50) NOT NULL,
prod_id int IDENTITY (1, 1) PRIMARY KEY,
quantity int
);
 
CREATE TABLE Supplier 

(supp_id int IDENTITY (1, 1) PRIMARY KEY,
supp_name VARCHAR(50) NOT NULL,
supp_location VARCHAR(50),
is_active bit NULL
);

CREATE TABLE Component

(comp_id int IDENTITY (1, 1) PRIMARY KEY,
comp_name VARCHAR(50) NOT NULL,
description VARCHAR(50),
quantity_comp int
);

CREATE TABLE Prod_Comp

(prod_id int PRIMARY KEY,
 Comp_id int ,
 quantity_comp int,

 FOREIGN KEY (comp_id)
 REFERENCES component(comp_id),
 FOREIGN KEY (prod_id)
 REFERENCES product (prod_id)
);

CREATE TABLE Comp_Supp

(supp_id int PRIMARY KEY,
 comp_id int,
 order_date date,
 quantity int,
 
 FOREIGN KEY(Supp_id)
 REFERENCES Supplier(supp_id),
 FOREIGN KEY (comp_id)
 REFERENCES Component(comp_id)
 );

