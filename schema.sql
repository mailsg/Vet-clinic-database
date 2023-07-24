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

/* Adding tables for demonstating many to many and one to many relationships - day 4 */

CREATE TABLE vets(id SERIAL PRIMARY KEY, name VARCHAR(50), age INT, date_of_graduation DATE);

CREATE TABLE specializations(vet_id INT REFERENCES vets(id), species_id INT REFERENCES species(id), PRIMARY KEY(vet_id, species_id));

CREATE TABLE visits(animal_id REFERENCES animals(id), vet_id INT REFERENCES vets(id), date_of_visit DATE);


-- Creating INDEX 

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX index_visit_animal_id ON visits(animal_id);

CREATE INDEX index_visit_vet_id ON visits(vet_id);

CREATE INDEX index_owners_email ON owners(email);