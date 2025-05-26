CREATE TABLE Utilisateur(
   ID_user integer,
   Nom VARCHAR(256),
   Prenom VARCHAR(256),
   Email VARCHAR(256),
   PRIMARY KEY(ID_user)
);

CREATE TABLE Materiel(
   ID_materiel integer,
   Nom VARCHAR(50),
   Categorie VARCHAR(50),
   Quantite_dispo integer,
   PRIMARY KEY(ID_materiel)
);

CREATE TABLE Reservation(
   ID_res integer,
   Date_debut VARCHAR(50),
   Date_fin date,
   Quantite_commande integer,
   ID_materiel integer,
   ID_user integer,
   PRIMARY KEY(ID_res),
   FOREIGN KEY(ID_materiel) REFERENCES Materiel(ID_materiel),
   FOREIGN KEY(ID_user) REFERENCES Utilisateur(ID_user)
);