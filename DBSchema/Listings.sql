CREATE TABLE listings (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    price NUMERIC NOT NULL,
    category TEXT NOT NULL,
    image_url TEXT,
    product_id INTEGER REFERENCES product(id),
    customer_id INTEGER REFERENCES customer(id)
)