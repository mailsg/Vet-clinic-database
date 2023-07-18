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

/* Add a column species of type string to the table. */
ALTER TABLE animals ADD species VARCHAR(50);

/* Adding new tables and modifying existing tables */
CREATE TABLE owners(id INT NOT NULL GENERATED ALWAYS AS IDENTITY, full_name VARCHAR(50), age INT);
CREATE TABLE species(id INT NOT NULL GENERATED ALWAYS AS IDENTITY, name VARCHAR(50), PRIMARY KEY(id));
ALTER TABLE owners ADD CONSTRAINT owners_pkey PRIMARY KEY(id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT, ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id) ON DELETE CASCADE;
ALTER TABLE animals ADD owner_id INT, ADD CONSTRAINT fk_owners FOREIGN KEY(owner_id) REFERENCES owners(id) ON DELETE CASCADE;
