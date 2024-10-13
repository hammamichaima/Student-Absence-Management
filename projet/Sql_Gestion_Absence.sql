SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE Absence (
  idAbsence int(11) NOT NULL,
  idEtudiant int(11) NOT NULL,
  idEnseingant int(11) NOT NULL,
  idMatiere int(11) NOT NULL,
  idClasse int(11) NOT NULL,
  numSeance int(11) DEFAULT NULL,
  date datetime DEFAULT CURRENT_TIMESTAMP,
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Absence (idAbsence, idEtudiant, idEnseingant, idMatiere, idClasse, numSeance, date, periode1, periode2) VALUES
(1, 2, 1, 2, 1, 2, '2022-11-04 00:00:00', 1, 0),
(2, 4, 5, 3, 2, 6, '2022-11-05 00:00:00', 0, 1),
(5, 1, 1, 1, 2, 1, '2022-11-09 00:00:00', 1, 1),
(6, 1, 1, 1, 2, 1, '2022-11-02 00:00:00', 1, 1),
(7, 1, 1, 1, 1, 1, '2022-11-03 00:00:00', 1, 1),
(8, 1, 2, 4, 1, 1, '2022-11-09 00:00:00', 1, 1),
(10, 1, 1, 1, 1, 2, '2022-11-10 00:00:00', 1, 1),
(11, 2, 1, 5, 8, 4, '2022-11-09 00:00:00', 0, 1),
(16, 5, 2, 2, 3, 1, '2022-11-15 08:45:55', 1, 1),
(18, 9, 1, 1, 3, 2, '2022-11-15 10:25:12', 1, 1),
(19, 5, 2, 2, 3, 1, '2022-11-15 13:36:36', 1, 1),
(20, 5, 1, 1, 3, 1, '2022-11-15 15:38:42', 1, 0),
(21, 9, 1, 1, 3, 1, '2022-11-15 15:38:43', 1, 0),
(22, 14, 2, 0, 2, 1, '2022-11-15 18:27:17', 1, 1);

CREATE TABLE Classe (
  idClasse int(11) NOT NULL,
  libelle varchar(45) DEFAULT NULL,
  niveau int(11) DEFAULT NULL,
  filiere varchar(45) DEFAULT 'Génie logiciel'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Classe (idClasse, libelle, niveau, filiere) VALUES
(1, '1 Année ', 1, 'Génie logiciel'),
(2, '1 Année ', 1, 'Génie logiciel'),
(3, '2 Année ', 2, 'Génie logiciel'),
(4, '2 Année ', 2, 'Génie logiciel'),
(5, '2 Année', 2, 'Génie logiciel'),
(6, '3 Année', 3, 'Génie logiciel');

CREATE TABLE Correspondance (
  idMatiere int(11) NOT NULL,
  idClasse int(11) NOT NULL,
  idEnseignant int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO Correspondance (idMatiere, idClasse, idEnseignant) VALUES
(1, 3, 1),
(1, 4, 1),
(2, 3, 1),
(2, 3, 2),
(3, 5, 5),
(4, 6, 6),
(5, 3, 2),
(5, 4, 2),
(6, 3, 1),
(6, 4, 1),
(7, 1, 5),
(7, 2, 5),
(100, 100, 100),
(1, 1, 9);


CREATE TABLE Enseignant (
  idEnseignant int(11) NOT NULL,
  nom varchar(45) DEFAULT NULL,
  prenom varchar(45) DEFAULT NULL,
  login varchar(45) DEFAULT NULL,
  password varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Enseignant (idEnseignant, nom, prenom, login, password) VALUES
(1, 'Youssfi', 'Sihame', 'Sihame', '0000'),
(2, 'Malika', 'Hanane', 'Malika', '0000'),
(3, 'Sennouni', 'Amine', 'Sennouni', '0000'),
(4, 'Rhoule', 'Hanaae', 'Rhoule', '0000'),
(5, 'Bachr', 'Ahmed', 'BachrB', '0000'),
(6, 'Amimi', 'Med Oussama', 'AmimiM', '0000'),
(8, 'Abdalaoui', 'Samir', 'AbdalaouiS', '0000');


CREATE TABLE Etudiant (
  idEtudiant int(11) NOT NULL,
  nom varchar(45) DEFAULT NULL,
  prenom varchar(45) DEFAULT NULL,
  idClasse int(11) NOT NULL,
  login varchar(45) NOT NULL,
  pwd varchar(45) DEFAULT NULL,
  niveau int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO Etudiant (idEtudiant, nom, prenom, idClasse, login, pwd, niveau) VALUES
(1, 'El Meslouhi', 'Mouaad', 1, 'Mouaad', '0000', 1),
(2, 'Khalouq', 'Mounir', 1, 'Mounir', '0000', 1),
(3, 'Zrhal', 'Oumaima', 4, 'Oumaima', '0000', 1),
(4, 'Zarud', 'Najwa', 1, 'Najwa', '0000', 1),
(5, 'Chahma', 'Oumaima', 3, 'OumaimaC', '0000', 2),
(6, 'Souhail', 'Idrissi', 5, 'Idrissi', '0000', 3),
(7, 'Soufi', 'Ali', 6, 'AliS', '0000', 3),
(8, 'El hajouli', 'samia', 2, 'SamiaH', '0000', 2),
(9, 'Tagnaouiti', 'Ghita', 3, 'GhitaT', '0000', 3),
(10, 'Safwani', 'Khalid', 4, 'KhalidS', '0000', 1),
(11, 'Kawtari', 'Hamid', 5, 'KawtariH', '0000', 2),
(12, 'Smati', 'Hichame', 6, 'HichameS', '0000', 2),
(13, 'EL Bsabssi ', 'Imane', 1, 'ImaneB', '0000', 2),
(14, 'Amimi', 'Mohamed Oussama', 2, 'MedOussamaA', '0000', 3),
(15, 'Garnaoui', 'Ahmed', 2, 'GarA', '0000', 1),
(16, 'Ghali', 'Ali', 1, 'AliG', '0000', 1);


CREATE TABLE Matiere (
  idMatiere int(11) NOT NULL,
  libelle varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Matiere (idMatiere, libelle) VALUES
(1, 'JAVA'),
(2, 'COO'),
(3, 'CyberSecurity'),
(4, 'IDB'),
(5, 'TLA'),
(6, 'SR'),
(7, 'Graph'),
(8, 'RESEAUX'),
(9, 'Proba'),
(10, 'Anglais');

CREATE TABLE Responsable (
  idResponsable int(11) NOT NULL,
  nom varchar(45) DEFAULT NULL,
  prenom varchar(45) DEFAULT NULL,
  login varchar(45) DEFAULT NULL,
  pwd varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Responsable (idResponsable, nom, prenom, login, pwd) VALUES
(1, 'ZAKKA', 'Fatima Zahra', 'FatimaZ', '0000'),
(2, 'Chawki', 'Ilham', 'ChawkiI', '0000'),
(3, 'Faysali', 'Hamza', 'FaysaliH', '0000'),
(4, 'Ouatabe', 'Zakaria', 'OuatabeZ', '0000'),
(5, 'Kaddami', 'Basma', 'KaddamiB', '0000');


ALTER TABLE Absence
  ADD PRIMARY KEY (idAbsence),
  ADD KEY `fk_Absence_Etudiant_idx` (idEtudiant),
  ADD KEY `fk_Absence_Classe1_idx` (idClasse),
  ADD KEY `fk_Absence_matiere1_idx` (idMatiere),
  ADD KEY `fk_Absence_Enseignant1_idx` (idEnseingant);

  ALTER TABLE Classe
  ADD PRIMARY KEY (idClasse);

  ALTER TABLE Correspondance
  ADD KEY `idMatiere` (idMatiere),
  ADD KEY `idClasse` (idClasse),
  ADD KEY `idEnseignant` (idEnseignant);


  ALTER TABLE Enseignant
  ADD PRIMARY KEY (idEnseignant);


  ALTER TABLE Etudiant
  ADD PRIMARY KEY (idEtudiant);


  ALTER TABLE Matiere
  ADD PRIMARY KEY (idMatiere);


  ALTER TABLE Responsable
  ADD PRIMARY KEY (idResponsable);


  ALTER TABLE Absence
  MODIFY idAbsence int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

  ALTER TABLE Classe
  MODIFY idClasse int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


  ALTER TABLE Enseignant
  MODIFY idEnseignant int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9

  ALTER TABLE Etudiant
  MODIFY idEtudiant int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

  ALTER TABLE Matiere
  MODIFY `idMatiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

  ALTER TABLE Responsable
  MODIFY `idResponsable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

  ALTER TABLE Absence
  ADD CONSTRAINT `Absence_ibfk_1` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`),
  ADD CONSTRAINT `Absence_ibfk_2` FOREIGN KEY (`idEnseingant`) REFERENCES `enseignant` (`idEnseignant`);














