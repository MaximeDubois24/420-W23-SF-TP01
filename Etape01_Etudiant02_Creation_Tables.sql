/* 
 Travail pratique 1
 Nom de la première personne
 --> Mohamed Reda Bouabdallah
 
 Date  02-08-2021                                             
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS logiciel (
id_logiciel INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_logiciel VARCHAR(45) NOT NULL,
nb_licence INT,
id_editeur INT,
PRIMARY KEY (id_logiciel),
CONSTRAINT  FOREIGN KEY (id_editeur) 
REFERENCES editeur(id_editeur)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS editeur(
id_editeur INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_editeur VARCHAR(45) NOT NULL,
PRIMARY KEY (id_editeur)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS usager (
id_usager INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_usager VARCHAR(45) NOT NULL,
prenom_usager VARCHAR(45) NOT NULL,
telephone_usager VARCHAR(15),
id_local INT,
PRIMARY KEY (id_usager),
CONSTRAINT  FOREIGN KEY (id_local) 
REFERENCES local(id_local)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS poste_has_logiciel(
id_poste INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_logiciel INT NOT NULL AUTO_INCREMENT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS usager_has_poste(
id_usager INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_poste INT NOT NULL AUTO_INCREMENT
) ENGINE = InnoDB;