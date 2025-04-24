Made in Khan Academy

Alcohol Database
/*isSeller should be a Boolean*/
CREATE TABLE customer (
    id INTEGER PRIMARY KEY, 
    name TEXT,
    age INTEGER,
    email TEXT,
    address TEXT,
    phone INTEGER,
    isSeller TEXT CHECK (isSeller IN ("Yes", "No"))
);

/*alcotype should be an ENUM*/
CREATE TABLE alcohol (
    id INTEGER PRIMARY KEY,
    alcotype TEXT CHECK (alcotype IN           ("BEER", "WINE", "SPIRITUS")),
    UNIQUE (alcotype)
);

CREATE TABLE product (
  id INTEGER PRIMARY KEY,
  product_type TEXT,
  product_name TEXT,
  percent NUMERIC,
  nationality TEXT,
  age INTEGER,
  price NUMERIC,
  alcohol_id INTEGER,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES               customer(id),
  FOREIGN KEY (alcohol_id) REFERENCES                alcohol(id),
  FOREIGN KEY (product_type) REFERENCES
  alcohol (alcotype)
);
/*CHECK (customer_id IN (SELECT id FROM customer WHERE isSeller = "Yes")) = To check if the customer is a seller or not. However, it cannot be in a subquery*/

INSERT INTO customer VALUES (1, "Jasmin Anderson", 19, "05Jasmay@gmail.com", "Stadion Alle. 8", 25797708, "Yes");
INSERT INTO customer VALUES (2, "Jacob Madsen", 0, "madsen.jacob92@gmail.com", "Randers", 12345678, "Yes");
INSERT INTO customer VALUES (3, "Tetiana Reshetylova", 0, "tania.reshetylova@gmail.com", "Viborg?", 098765432, "No");


INSERT INTO alcohol VALUES (1, "BEER");
INSERT INTO alcohol VALUES (2, "WINE");
INSERT INTO alcohol VALUES (3, "SPIRITUS");

INSERT INTO product VALUES (1, "BEER", "Blanc", 16.6, "German", 1995, 95.5, 1, 1);
INSERT INTO product VALUES (2, "WINE", "Whitewine", 20, "Italien", 1955, 135.50, 2, 2);
INSERT INTO product VALUES (3, "SPIRITUS", "Vodka", 40, "Sweden", 2000, 150, 3, 2);


SELECT * FROM customer;
SELECT * FROM alcohol;
SELECT * FROM product;


SELECT p.id AS product_id, 
    p.product_name, 
    p.product_type, 
    p.percent, p.price, 
    a.alcotype AS type_of_alcohol, 
    c.id AS customer_id
FROM product AS p
JOIN alcohol AS a ON p.alcohol_id = a.id
JOIN customer AS c ON p.customer_id = c.id
ORDER BY p.id;
