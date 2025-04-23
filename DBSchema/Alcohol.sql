CREATE TABLE alcohol (
id SERIAL PRIMARY KEY,
alcotype  ENUM('beer','wine','spiritus') NOT NULL
);