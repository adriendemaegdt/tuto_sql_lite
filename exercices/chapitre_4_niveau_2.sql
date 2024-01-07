
-- CHAPITRE 4: SELECTION DE DONNEES NIVEAU 2

-- DISTINCT 

-- Sélectionne la liste de toutes les actions présentes dans les rêves. 
-- Sélectionne la liste des pseudo des rêveurs ayant fait au moins 1 cauchemar.
-- Sélectionne toutes les combinaisons pseudo rêveur, heure.

-- ORDER BY ( corrigé ) 

-- 1) Affichez les rêves des plus anciens aux plus nouveaux.
-- SELECT * FROM reves ORDER BY date ASC 
-- 2) Affichez les actions par ordre alphabétique.( Attention doublons )
-- SELECT DISTINCT action FROM reves ORDER BY action ASC
-- 3) Affichez les rêves lucides triés par nombre de personnages décroissant.
-- SELECT * FROM reves WHERE lucide = 1 ORDER BY nb_personnages DESC
-- 4) Affichez les rêves cauchemardesques triés d'abord par émotion de manière ascendante puis par date de manière descendante.
-- SELECT * FROM reves WHERE cauchemard = 1 ORDER BY emotion ASC, date DESC 


-- GROUP BY
-- Comptez le nombre de rêves pour chaque émotion.
-- Comptez le nombre de cauchemars pour chaque pseudo_reveur
-- SELECT COUNT(*) FROM reves WHERE cauchemard=1 GROUP BY pseudo_reveur
-- Calculez la moyenne du nombre de personnages pour chaque émotion.
-- Comptez le nombre de cauchemars pour chaque mois.

-- EXERCICE GENERAL: 
-- 1) Affichez les 5 rêves les plus récents, triés par date et heure.
-- SELECT * FROM reves ORDER BY date DESC, heure  LIMIT 5
-- 2) Comptez le nombre total de rêves pour chaque pseudo_reveur.
-- SELECT pseudo_reveur, COUNT(pseudo_reveur) FROM reves GROUP BY pseudo_reveur
-- 3) Comptez le nombre de rêves lucides pour chaque pseudo_reveur.
-- SELECT pseudo_reveur, COUNT(*) FROM reves GROUP BY pseudo_reveur HAVING lucide == 'Oui'
-- 4) Affichez les détails du rêve avec le plus grand nombre de personnages.
-- SELECT * FROM reves ORDER BY nb_personnages DESC LIMIT 1
-- 5) Calculez la moyenne du nombre de personnages dans tous les rêves.
-- SELECT AVG(nb_personnages) FROM reves
-- 6) Affichez le nombre de rêves pour chaque émotion, regroupés par mois.
-- 7) Comptez le nombre total de rêves pour chaque mois.
-- 8) Comptez le nombre de rêves moyen par utilisateur par mois.
-- 9) Affichez le titre, la date et l'heure du dernier rêve enregistré pour chaque pseudo_reveur.
