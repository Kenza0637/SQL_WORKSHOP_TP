SELECT * FROM utilisateur; /* voir toute la table Utilisateurs*/
SELECT email FROM utilisateur WHERE nom = 'Dupont' OR nom = 'Roux'; /* Voir les emails des utilisateurs dont le nom est dupont ou roux*/
SELECT nom FROM materiel WHERE categorie ='Informatique'; /* voir le nom du matériel de catégorie informatique*/
SELECT id_res FROM reservation WHERE id_user ='5'; /*voir les ID des reservations dont l'utilisateur à l'id 5 */
