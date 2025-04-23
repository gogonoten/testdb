CREATE TABLE product (
 INT AUTO_INCREMENT PRIMARY KEY,
  alcohol_id INT  NOT NULL,
  product_type  TEXT NOT NULL,
  product_name  TEXT  NOT NULL,
  percent DECIMAL(2,2),
  nationality   TEXT,
  age INT,
  price DECIMAL(5,2),
  customer_id INT   NOT NULL,
);