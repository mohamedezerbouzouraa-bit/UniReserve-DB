CREATE TABLE reservation (

    reservation_id INTEGER PRIMARY KEY,
    batiment VARCHAR(1),
    numero_salle VARCHAR(10),
    enseignement_id INTEGER,
    departement_id INTEGER,
    enseignant_id INTEGER,
    date_resa DATE,
    heure_debut TIME,
    heure_fin TIME,
    nombre_heures INTEGER,
    CONSTRAINT fk_reservation_salle
        FOREIGN KEY (batiment, numero_salle)
        REFERENCES salle(batiment, numero_salle),
    CONSTRAINT fk_reservation_enseignement
        FOREIGN KEY (enseignement_id)
        REFERENCES enseignement(enseignement_id),
    CONSTRAINT fk_reservation_departement
        FOREIGN KEY (departement_id)
        REFERENCES departement(departement_id),
    CONSTRAINT fk_reservation_enseignant
        FOREIGN KEY (enseignant_id)
        REFERENCES enseignant(enseignant_id));
