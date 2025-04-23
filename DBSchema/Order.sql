CREATE TABLE `order` (
    id INT PRIMARY KEY,
    customer_id INT,
    payment ENUM('MobilePay', 'Creditcard', 'Cash'),     
    shipping ENUM('Postnord', 'GLS', 'Pickup'),     
    product_id INT
);