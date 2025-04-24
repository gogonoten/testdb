SELECT
  p.id AS product_id, p.name, p.type, p.percentage, p.price, 
  c.id AS customer_id,

FROM product AS p

JOIN customer AS c ON p.customer_id = c.id
ORDER BY p.id;