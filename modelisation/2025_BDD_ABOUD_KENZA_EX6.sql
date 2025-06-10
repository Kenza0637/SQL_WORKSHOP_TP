DELETE FROM Reservation 
WHERE ID_res = '1'; /*suppression d’une réservation existante, ici en fonction de l'ID */

DELETE FROM Reservation 
WHERE Date_fin < CURRENT_DATE; /*suppression d'une réservation ou la date de retour prévue est passée. Le résulatat est 0 car toutes mes dates de reservation sont au future*/
