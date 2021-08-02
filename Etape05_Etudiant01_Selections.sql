/* 
 Travail pratique 1
 --> Maxime Dubois
 Nom de la deuxième personne
 
 Date  02-08-2021
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------
SELECT l.nom_local AS 'No.local', l.nb_bureau AS 'Nb.bureau', l.nb_prise_ethernet AS 'Nb.prise ethernet', l.imprimante_id_peripherique AS 'No.imprimante', p.nom_peripherique  AS "nom de l'imprimante"
FROM local AS l
join peripherique AS p ON p.id_peripherique = l.imprimante_id_peripherique;

SELECT l.nom_logiciel, count(l.id_logiciel)
FROM poste_has_logiciel AS p
join logiciel AS l ON l.id_logiciel = p.id_logiciel
group by id_logiciel
ORDER BY count(l.id_logiciel);
