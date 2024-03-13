CREATE TABLE customer (
  customerId INT,
  customerFName VARCHAR(255),
  customerLName VARCHAR(255),
  customerStreet VARCHAR(255),
  customerCity VARCHAR(255),
  customerState VARCHAR(255),
  customerZipcode VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/customers5.csv'
INTO TABLE customer
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
