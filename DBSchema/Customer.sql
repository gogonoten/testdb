CREATE TABLE customer (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    age INTEGER,
    address TEXT,
    phone INTEGER,
    isSeller BOOLEAN
    passwordHash TEXT NOT NULL DEFAULT ''
);
