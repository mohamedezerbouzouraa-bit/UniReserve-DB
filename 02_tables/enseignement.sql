CREATE TABLE enseignement (enseignement_id INTEGER PRIMARY KEY,
    departement_id INTEGER,
    intitule VARCHAR(60),
    description VARCHAR(1000),
    CONSTRAINT fk_enseignement_departementFOREIGN KEY (departement_id) REFERENCES departement(departement_id));
