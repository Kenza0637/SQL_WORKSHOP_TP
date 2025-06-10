-- Nettoyage des tables
TRUNCATE TABLE reservation RESTART IDENTITY CASCADE;
TRUNCATE TABLE disponibilite RESTART IDENTITY CASCADE;
TRUNCATE TABLE materiel RESTART IDENTITY CASCADE;
TRUNCATE TABLE utilisateur RESTART IDENTITY CASCADE;

-- Insertion de 100 000 utilisateurs
DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 1..100000 LOOP
        INSERT INTO utilisateur (ID_user, Nom, Prenom, Email)
        VALUES (
            i,
            'nom_' || i,
            'prenom_' || i,
            'email_' || i || '@example.com'
        );
    END LOOP;
END $$;

-- Insertion de 100 000 matériels
DO $$
DECLARE
    i INT;
BEGIN
    FOR i IN 1..100000 LOOP
        INSERT INTO materiel (ID_materiel, Nom, Categorie, Quantite_dispo)
        VALUES (
            i,
            'materiel_' || i,
            'categorie_' || ((i % 10) + 1),
            (random() * 20)::INT + 1
        );
    END LOOP;
END $$;

-- Insertion de 200 000 disponibilités
DO $$
DECLARE
    i INT;
    start_date DATE;
    end_date DATE;
BEGIN
    FOR i IN 1..200000 LOOP
        start_date := DATE '2025-01-01' + (random() * 365)::INT;
        end_date := start_date + (random() * 30)::INT;

        INSERT INTO disponibilite (ID_materiel, Date_debut, Date_fin)
        VALUES (
            (random() * 99999)::INT + 1,
            start_date,
            end_date
        );
    END LOOP;
END $$;

-- Insertion de 200 000 réservations
DO $$
DECLARE
    i INT;
    start_date DATE;
    end_date DATE;
BEGIN
    FOR i IN 1..200000 LOOP
        start_date := DATE '2025-01-01' + (random() * 365)::INT;
        end_date := start_date + (random() * 15)::INT;

        INSERT INTO reservation (id_res, Date_debut, Date_fin, Quantite_commande, ID_materiel, ID_user)
        VALUES (
			i,
            start_date,
            end_date,
            (random() * 5)::INT + 1,
            (random() * 99999)::INT + 1,
            (random() * 99999)::INT + 1
        );
    END LOOP;
END $$;

--question 5

SELECT * 
FROM
    Reservation
JOIN
    Utilisateur ON Reservation.id_user = Utilisateur.id_user
JOIN
    Materiel ON Reservation.id_materiel = Materiel.id_materiel
JOIN
    Disponibilite ON Materiel.id_materiel = Disponibilite.id_materiel
WHERE
    Reservation.date_debut = '2025-06-12';

--question 6
EXPLAIN ANALYZE
SELECT *
FROM
    Reservation
JOIN
    Utilisateur ON Reservation.id_user = Utilisateur.id_user
JOIN
    Materiel ON Reservation.id_materiel = Materiel.id_materiel
JOIN
    Disponibilite ON Materiel.id_materiel = Disponibilite.id_materiel
WHERE
    Reservation.date_debut = '2025-06-12';

--question 7
CREATE INDEX idx_reservation_date_debut ON Reservation(date_debut);
CREATE INDEX idx_reservation_id_utilisateur ON Reservation(id_user);
CREATE INDEX idx_reservation_id_materiel ON Reservation(id_materiel);
CREATE INDEX idx_disponibilite_id_materiel ON Disponibilite(id_materiel);

