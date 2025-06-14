SELECT COUNT(*) AS nombre_reservations FROM Reservation WHERE Date_debut >= '2024-01-01' AND Date_fin <= '2024-12-31'; /*nombre de réservation entre 2 dates définies*/
SELECT COUNT(DISTINCT ID_user) AS nombre_utilisateurs FROM Reservation; /*nombre d'utilisateur ayant reservé du matériel*/
SELECT ID_materiel, COUNT(*) AS nombre_reservations FROM Reservation GROUP BY ID_materiel; /*nombre de fois qu'un matériel a été résevé*/
