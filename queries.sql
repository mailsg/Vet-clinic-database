/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered = true;

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

/* Adding transactions for day 2 */

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE name NOT LIKE '%mon';
SELECT * FROM animals;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT first_save_point;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT first_save_point;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

/* Queries for day 2 */

SELECT COUNT(id) AS NUMBER_OF_ANIMALS FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) AS AVERAGE_WEIGHT FROM animals;

SELECT name, neutered FROM animals 
WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM animals)
GROUP BY name, neutered;

SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animals GROUP BY species;

SELECT species, AVG(escape_attempts) FROM animals 
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-01'
GROUP BY species;

/* Queries for day 3 */

SELECT name FROM animals 
JOIN owners 
ON 
animals.owner_id = owners.id 
WHERE full_name = 'Melody Pond';

SELECT a.name FROM animals AS a 
JOIN species AS s 
ON 
a.species_id = s.id 
WHERE s.name = 'Pokemon';

SELECT o.full_name AS Owner_Name, a.name AS Pet_Name FROM animals AS a 
RIGHT JOIN owners AS o 
ON 
a.owner_id = o.id;

SELECT s.name AS species_name, COUNT(*) AS species_count FROM species s 
JOIN animals a 
ON 
s.id = a.species_id 
GROUP BY s.name;

SELECT a.name FROM animals a 
JOIN owners o 
ON 
a.owner_id = o.id 
JOIN species s 
ON 
a.species_id = s.id 
WHERE o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';

SELECT a.name FROM animals a 
JOIN owners o 
ON 
a.owner_id = o.id 
WHERE o.full_name = 'Dean Winchester' AND a.escape_attempts = 0;

SELECT o.full_name, COUNT(*) AS number_count FROM owners o 
JOIN animals a 
ON o.id = a.owner_id 
GROUP BY o.full_name 
ORDER BY COUNT(*) DESC LIMIT 1;

/* Queries for day 4 */

SELECT name FROM animals WHERE id = 
    (SELECT animal_id FROM visits 
        JOIN vets 
        ON 
        visits.vet_id = vets.id 
        WHERE name = 'William Tatcher' 
        ORDER BY date_of_visit 
        DESC LIMIT 1
    );

SELECT COUNT(DISTINCT animal_id) FROM visits 
JOIN vets 
ON visits.vet_id = vets.id 
WHERE name = 'Stephanie Mendez';

SELECT name, 
(SELECT name FROM species WHERE id = specializations.species_id ) AS species 
FROM vets 
LEFT JOIN specializations 
ON specializations.vet_id = vets.id;

SELECT (SELECT name FROM animals WHERE id = visits.animal_id) 
FROM visits 
WHERE vet_id =   
 (SELECT id FROM vets WHERE name = 'Stephanie Mendez') 
 AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

SELECT a.name, COUNT(v.animal_id) AS visit_count
FROM visits v
JOIN animals a ON a.id = v.animal_id
GROUP BY v.animal_id, a.name
ORDER BY visit_count DESC
LIMIT 1;

SELECT a.name AS animal, v.date_of_visit
FROM visits v
JOIN animals a ON a.id = v.animal_id
JOIN vets vt ON vt.id = v.vet_id
WHERE vt.name = 'Maisy Smith'
ORDER BY v.date_of_visit ASC
LIMIT 1;

SELECT a.*, v.*, vs.date_of_visit
FROM visits vs
JOIN animals a ON a.id = vs.animal_id
JOIN vets v ON v.id = vs.vet_id
WHERE vs.date_of_visit = (
  SELECT MAX(date_of_visit)
  FROM visits
)
LIMIT 1;

SELECT COUNT(*)
FROM visits v
JOIN animals a ON v.animal_id = a.id
LEFT JOIN specializations s ON v.vet_id = s.vet_id AND a.species_id = s.species_id
WHERE s.species_id IS NULL;

SELECT sp.name
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN species sp ON sp.id = a.species_id
WHERE v.vet_id = (SELECT id FROM vets WHERE name = 'Maisy Smith') 
GROUP BY sp.name
ORDER BY COUNT(*) DESC
LIMIT 1;

