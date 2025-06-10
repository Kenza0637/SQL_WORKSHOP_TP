SELECT DISTINCT Utilisateur.* FROM Utilisateur JOIN Reservation ON Utilisateur.ID_user = Reservation.ID_user; /*les utilisateurs ayant emprunté au moins un équipement */

SELECT * FROM Materiel WHERE ID_materiel NOT IN (SELECT ID_materiel FROM Reservation); /*les équipements n’ayant jamais été empruntés*/

SELECT Materiel.ID_materiel, Materiel.Nom, COUNT(*) AS nb_emprunts
FROM Materiel
JOIN Reservation ON Materiel.ID_materiel = Reservation.ID_materiel
GROUP BY Materiel.ID_materiel, Materiel.Nom
HAVING COUNT(*) > 3; /*les équipements ayant été emprunté plus de 3 fois*/

SELECT Utilisateur.ID_user, Utilisateur.Nom, COUNT(Reservation.ID_res) AS nb_emprunts
FROM Utilisateur
LEFT JOIN Reservation ON Utilisateur.ID_user = Reservation.ID_user
GROUP BY Utilisateur.ID_user, Utilisateur.Nom
ORDER BY Utilisateur.ID_user; /*le nombre d’emprunts pour chaque utilisateur, ordonné par numéro d'étudiant. Les utilisateurs n'ayant pas de réservations en cours doivent également être affichés avec la valeur 0 dans le nombre d'emprunts.*/
