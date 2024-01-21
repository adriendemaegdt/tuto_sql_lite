
-- CHAPITRE 4: SELECTION DE DONNEES NIVEAU 2

-- DISTINCT 
-- Sélectionne la liste de toutes les actions présentes dans les rêves. 
SELECT DISTINCT action FROM reves
-- Sélectionne la liste des pseudo des rêveurs ayant fait au moins 1 cauchemar
SELECT DISTINCT pseudo_reveur FROM reves WHERE cauchemard = 1
-- Sélectionne toutes les combinaisons pseudo rêveur, date.
SELECT DISTINCT pseudo_reveur, date FROM reves

-- ORDER BY 
-- 1) Affichez les rêves des plus anciens aux plus nouveaux.
SELECT * FROM reves ORDER BY date ASC 
-- 2) Affichez les actions par ordre alphabétique.( Attention doublons )
SELECT DISTINCT action FROM reves ORDER BY action ASC
-- 3) Affichez les rêves lucides triés par nombre de personnages décroissant.
SELECT * FROM reves WHERE lucide = 1 ORDER BY nb_personnages DESC
-- 4) Affichez les rêves cauchemardesques triés d'abord par émotion de manière ascendante puis par date de manière descendante.
SELECT * FROM reves WHERE cauchemard = 1 ORDER BY emotion ASC, date DESC 


-- GROUP BY
-- Comptez le nombre de rêves pour chaque émotion.
SELECT emotion , COUNT(*) FROM reves GROUP BY emotion ;
-- Comptez le nombre de cauchemars pour chaque pseudo_reveur
SELECT pseudo_reveur, COUNT(*) FROM reves WHERE cauchemard=1 GROUP BY pseudo_reveur
-- Calculez la moyenne du nombre de personnages pour chaque émotion.
SELECT emotion, AVG(nb_personnages) FROM reves GROUP BY emotion
-- Comptez le nombre de cauchemars pour chaque mois.
-- OPTION 1: 
    SELECT strftime('%Y-%m', date) as mois, COUNT(*) AS nb_cauchemard 
    FROM reves 
    WHERE cauchemard = 1 
    GROUP BY mois 
    ORDER BY mois

--  OPTION 2
    ALTER TABLE reves
    ADD COLUMN mois INTEGER;
    UPDATE reves
    SET mois = strftime('%m', date);
    SELECT mois, COUNT(*) FROM reves WHERE cauchemard = 1 GROUP BY mois 


-- FONCTION D'AGREGATION: 
-- 1) Nombre total de rêves enregistrés
SELECT COUNT(id_reve) AS nombre_total_de_reves FROM reve;
-- 2) Calculez le nombre moyen de personnages pour les rêves lucides.
SELECT AVG(nb_personnages) AS moyenne_personnages_lucides FROM reve WHERE lucide = 1;
-- 3) Calculez le nombre de reves par utilisateur
SELECT pseudo_reveur, COUNT(pseudo_reveur) FROM reves GROUP BY pseudo_reveur


-- EXERCICE GENERAL: 
-- 1) Affichez les 5 rêves les plus récents, triés par date et heure.
SELECT * FROM reves ORDER BY date DESC, heure  LIMIT 5

-- 2) Comptez le nombre total de rêves pour chaque pseudo_reveur.
SELECT pseudo_reveur, COUNT(*) as nb_reve FROM reves
GROUP BY pseudo_reveur
ORDER BY nb_reve DESC;

-- 3) Comptez le nombre de rêves lucides pour chaque pseudo_reveur.

SELECT pseudo_reveur, COUNT(*) AS nb_reve_lucide 
FROM reves WHERE lucide = 1 
GROUP BY pseudo_reveur
ORDER BY nb_reve_lucide

-- 4) Affichez les détails du rêve avec le plus grand nombre de personnages.
SELECT DISTINCT *, MAX(nb_personnages) FROM reves
SELECT * FROM reves ORDER BY nb_personnages DESC LIMIT 1

-- 5) Calculez la moyenne du nombre de personnages dans tous les rêves.
SELECT ROUND(AVG(nb_personnages)) FROM reves
-- OU 
SELECT AVG(nb_personnages) AS moyenne_nb_personnage FROM reves

-- 6) Comptez le nombre total de rêves pour chaque mois.
--                  ADD MONTH COLUMN 
ALTER TABLE reves
ADD COLUMN mois INTEGER;
UPDATE reves
SET mois = strftime('%m', date);

SELECT mois AS mois, COUNT(id_reve) AS nombre_de_reves
FROM reves
GROUP BY mois
ORDER BY mois;

-- 7) Affichez le nombre de rêves pour chaque émotion, regroupés par mois.
SELECT MONTH(date) AS date, emotion, COUNT(id_reve) AS nombre_de_reves
FROM reves
GROUP BY date, emotion
ORDER BY date, COUNT(id_reve) DESC;

-- 8) Comptez le nombre de rêves moyen par utilisateur par date.
SELECT mois, AVG(nb_reves) as nb_reves_moyen_utilisateurs FROM 
(SELECT pseudo_reveur, mois, COUNT(*) AS nb_reves FROM reves GROUP BY pseudo_reveur, mois ORDER BY mois)
GROUP BY mois

--9) Affichez le titre, la date et l'heure du dernier rêve enregistré pour chaque pseudo_reveur.
SELECT titre, MAX(date), heure, pseudo_reveur FROM reves GROUP BY pseudo_reveur 

