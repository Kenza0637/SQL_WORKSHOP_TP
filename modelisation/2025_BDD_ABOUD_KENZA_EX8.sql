CREATE TABLE Disponibilite (
    ID_disponibilite SERIAL PRIMARY KEY,
    ID_materiel INTEGER NOT NULL REFERENCES Materiel(ID_materiel),
    Date_debut DATE NOT NULL,
    Date_fin DATE NOT NULL,
    CHECK (Date_fin >= Date_debut)
);

ALTER TABLE Reservation
ADD COLUMN ID_disponibilite INTEGER REFERENCES Disponibilite(ID_disponibilite);

SELECT 
    CASE 
        WHEN COUNT(*) > 0 THEN 'Disponible'
        ELSE 'Indisponible'
    END AS statut_disponibilite
FROM Disponibilite
WHERE ID_materiel = 1
AND Date_debut <= DATE '2025-06-10'
AND Date_fin >= DATE '2025-06-15';

SELECT ID_disponibilite
FROM Disponibilite
WHERE ID_materiel = 1
AND Date_debut <= DATE '2025-06-10'
AND Date_fin >= DATE '2025-06-15';
