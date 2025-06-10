UPDATE Materiel
SET Quantite_dispo = Quantite_dispo - (
    SELECT Quantite_commande
    FROM Reservation
    WHERE Reservation.ID_materiel = Materiel.ID_materiel
      AND ID_res = '1' 
)
WHERE ID_materiel = (
    SELECT ID_materiel
    FROM Reservation
    WHERE ID_res = '1'
); /*modification de la quantité dispo d'un matériel après son emprunt*/


UPDATE Materiel
SET Quantite_dispo = Quantite_dispo - sub.Quantite_commande
FROM (
    SELECT ID_materiel, SUM(Quantite_commande) AS Quantite_commande
    FROM Reservation
    WHERE Date_fin > CURRENT_DATE + INTERVAL '2 days'
    GROUP BY ID_materiel
) AS sub
WHERE Materiel.ID_materiel = sub.ID_materiel; /*modification de la quantité de tous les matériels qui sont en cours d'emprunt et la date de retour prévue dans plus de 2 jours.*/
