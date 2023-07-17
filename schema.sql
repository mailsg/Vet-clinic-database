/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(50), 
    date_of_birth DATE, 
    escape_attempts INT, 
    neutered BOOL, 
    weight_kg DECIMAL, 
    PRIMARY KEY(id)
);
