CREATE TABLE note (
    note_id INT PRIMARY KEY ,  
    et_id INT,                            
    en_id INT,                              
    valeur DECIMAL(5,2) NOT NULL,          
    date_note DATE NOT NULL,            
    FOREIGN KEY (et_id) REFERENCES etudiant(etudiant_id),
    FOREIGN KEY (en_id) REFERENCES enseignement(enseignement_id)
);
