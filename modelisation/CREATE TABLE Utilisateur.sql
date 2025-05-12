CREATE TABLE Utilisateur(
   ID_user VARCHAR(50),
   Nom VARCHAR(256),
   Prenom VARCHAR(256),
   Email VARCHAR(256),
   PRIMARY KEY(ID_user)
);

CREATE TABLE Materiel(
   ID_materiel VARCHAR(50),
   Nom VARCHAR(50),
   Categorie VARCHAR(50),
   Quantite_dispo BIGINT,
   PRIMARY KEY(ID_materiel)
);

CREATE TABLE Reservation(
   ID_res VARCHAR(50),
   Date_debut VARCHAR(50),
   Date_fin VARCHAR(50),
   Quantite_commande BIGINT,
   ID_materiel VARCHAR(50),
   ID_user VARCHAR(50),
   PRIMARY KEY(ID_res),
   FOREIGN KEY(ID_materiel) REFERENCES Materiel(ID_materiel),
   FOREIGN KEY(ID_user) REFERENCES Utilisateur(ID_user)
);
