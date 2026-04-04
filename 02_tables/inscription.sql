CREATE TABLE inscription (
    et_id INT,
    en_id INT,
    date_inscription DATE,
    PRIMARY KEY (et_id, en_id),
    FOREIGN KEY (et_id) REFERENCES etudiant(etudiant_id),
    FOREIGN KEY (en_id) REFERENCES enseignement(enseignement_id)
);
