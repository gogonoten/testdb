SELECT
  p.id AS product_id, p.name, p.type, p.percentage, p.price, a.alcotype AS type_of_alcohol,
  c.id AS customer_id,

FROM product AS p
JOIN alcohol AS a ON p.alcohol_id = a.id
JOIN customer AS c ON p.customer_id = c.id
ORDER BY p.id;