CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);


CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctor_id PRIMARY KEY,
    d_firstname VARCHAR(50),
    d_lastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
    
);

CREATE TABLE invoices (

    invoiceid int NOT NULL PRIMARY KEY,
    appointid int,
    totalamount NUMERIC(10,2),
    paymentdate TIME,

    FOREIGN KEY (appointid) REFERENCES appointments (appointid)
);

CREATE TABLE medicalrecords (
    record_id PRIMARY KEY,
    animalid INT,
    recorderdate TIMESTAMP,
    doctor_id INT,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
    
);




