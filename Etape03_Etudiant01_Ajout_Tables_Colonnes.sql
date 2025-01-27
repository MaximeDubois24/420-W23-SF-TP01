/* 
 Travail pratique 1
 --> Maxime Dubois
 Mohamed Reda Bouabdallah
 
 Date  02-08-2021
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS type_peripherique(
	id_type_peripherique INT NOT NULL,
    nom_type_peripherique VARCHAR(25),
     -- contraintes de table
    PRIMARY KEY (id_type_peripherique)
    )ENGINE = InnoDB;
    
ALTER TABLE peripherique
ADD id_type_peripherique INT,
ADD CONSTRAINT id_type_peripherique FOREIGN KEY (id_type_peripherique) REFERENCES type_peripherique(id_type_peripherique);

ALTER TABLE local
ADD nb_bureau INT,
ADD nb_prise_ethernet INT,
ADD imprimante_id_peripherique INT,
ADD CONSTRAINT imprimante_id_peripherique FOREIGN KEY (imprimante_id_peripherique) REFERENCES peripherique(id_peripherique);

ALTER TABLE local
MODIFY nom_local VARCHAR(45) UNIQUE NOT NULL;

ALTER TABLE fabricant
MODIFY nom_fabricant VARCHAR(45) UNIQUE NOT NULL;


