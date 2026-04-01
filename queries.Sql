

-- Tous les étudiants
SELECT nom, prenom FROM etudiant;

-- Etudiants habitant TUNIS ou SFAX
SELECT nom, prenom, ville
FROM etudiant
WHERE ville IN ('TUNIS', 'SFAX');

-- Etudiants dont le nom commence par "t"
SELECT nom, prenom
FROM etudiant
WHERE nom LIKE 't%';

-- Moyenne des notes par étudiant
SELECT e.nom, e.prenom, AVG(n.valeur) AS moyenne
FROM note n
JOIN etudiant e ON n.et_id = e.etudiant_id
GROUP BY e.etudiant_id;

-- Moyenne des notes par enseignement
SELECT en.intitule, AVG(n.valeur) AS moyenne_enseignement
FROM note n
JOIN enseignement en ON n.en_id = en.enseignement_id
GROUP BY en.en_id;

-- Nombre d'enseignants ayant le grade "Moniteur"
SELECT count(*)
FROM enseignant e
WHERE e.grade='Moniteur';

-- Salle avec la plus grande capacité
SELECT numero_salle
FROM salle s
WHERE capacite IN (
    SELECT max(capacite)
    FROM salle
);

-- Salles avec capacité inférieure à la moyenne
SELECT *
FROM salle
WHERE capacite < (
    SELECT avg(capacite)
    FROM salle
);
