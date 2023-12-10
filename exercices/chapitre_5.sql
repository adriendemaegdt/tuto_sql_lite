

-- 1) Affichez les 5 rêves les plus récents, triés par date et heure.
-- SELECT * FROM reves ORDER BY date DESC, heure  LIMIT 5
-- Comptez le nombre total de rêves pour chaque pseudo_reveur.
-- SELECT pseudo_reveur, COUNT(pseudo_reveur) FROM reves GROUP BY pseudo_reveur
-- Comptez le nombre de rêves lucides pour chaque pseudo_reveur.
-- SELECT pseudo_reveur, COUNT(*) FROM reves GROUP BY pseudo_reveur HAVING lucide == 'Oui'
-- Affichez les détails du rêve avec le plus grand nombre de personnages.
-- SELECT * FROM reves ORDER BY nb_personnages DESC LIMIT 1
-- Calculez la moyenne du nombre de personnages dans tous les rêves.
-- SELECT AVG(nb_personnages) FROM reves
-- Affichez le nombre de rêves pour chaque émotion, regroupés par mois.
-- Comptez le nombre total de rêves pour chaque mois.
-- Affichez le titre, la date et l'heure du dernier rêve enregistré pour chaque pseudo_reveur.
