INSERT INTO Utilisateur (ID_user, Nom, Prenom, Email) VALUES
('1', 'Dupont', 'Alice', 'alice.dupont@example.com'),
('2', 'Martin', 'Jean', 'jean.martin@example.com'),
('3', 'Durand', 'Sophie', 'sophie.durand@example.com'),
('4', 'Bernard', 'Luc', 'luc.bernard@example.com'),
('5', 'Petit', 'Laura', 'laura.petit@example.com'),
('6', 'Moreau', 'Thomas', 'thomas.moreau@example.com'),
('7', 'Garcia', 'Emma', 'emma.garcia@example.com'),
('8', 'Roux', 'Hugo', 'hugo.roux@example.com'),
('9', 'Fournier', 'Clara', 'clara.fournier@example.com'),
('10', 'Girard', 'Nathan', 'nathan.girard@example.com');

INSERT INTO Materiel (ID_materiel, Nom, Categorie, Quantite_dispo) VALUES
('1', 'Ordinateur portable', 'Informatique', 15),
('2', 'Projecteur', 'Audiovisuel', 5),
('3', 'Casque VR', 'Informatique', 10),
('4', 'Appareil photo', 'Multimédia', 8),
('5', 'Tablette', 'Informatique', 12),
('6', 'Microphone', 'Audiovisuel', 20),
('7', 'Ecran', 'Informatique', 7),
('8', 'Imprimante 3D', 'Technique', 2),
('9', 'Scanner', 'Informatique', 4),
('10', 'Caméra', 'Audiovisuel', 6);

INSERT INTO Reservation (ID_res, Date_debut, Date_fin, Quantite_commande, ID_materiel, ID_user) VALUES
('1', '2024-05-20', '2024-05-25', 2, '1', '1'),
('2', '2024-06-01', '2024-06-05', 1, '2', '2'),
('3', '2024-06-10', '2024-06-12', 3, '5', '3'),
('4', '2024-05-22', '2024-05-30', 1, '6', '4'),
('5', '2024-06-15', '2024-06-18', 2, '3', '5');
