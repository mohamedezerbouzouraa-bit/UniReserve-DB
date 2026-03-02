CREATE TABLE enseignant (
    enseignant_id INTEGER PRIMARY KEY,
    departement_id INTEGER,
    nom VARCHAR(25),
    prenom VARCHAR(25),
    grade VARCHAR(25),
    telephone VARCHAR(10),
    fax VARCHAR(10),
    email VARCHAR(100),
    CONSTRAINT fk_enseignant_departement
        FOREIGN KEY (departement_id)
        REFERENCES departement(departement_id)
);
