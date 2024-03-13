\c dataops dataops_user;

CREATE TABLE customer (
    customerId SERIAL PRIMARY KEY,
    customerFName VARCHAR(50),
    customerLName VARCHAR(50),
    customerEmail VARCHAR(50),
    customerPassword VARCHAR(50),
    customerStreet VARCHAR(255),
    customerCity VARCHAR(255),
    customerState VARCHAR(255),
    customerZipcode VARCHAR(255)
);

\copy customer FROM '/docker-entrypoint-initdb.d/customers5.csv' DELIMITER ',' CSV HEADER;
