SELECT p.id AS product_id, 
    p.product_name, 
    p.product_type, 
    p.percent, p.price, 
    
    c.id AS customer_id
FROM product AS p

JOIN customer AS c ON p.customer_id = c.id
ORDER BY p.id;