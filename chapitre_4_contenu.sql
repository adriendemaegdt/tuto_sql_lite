

--CHAPITRE 4: CONTENU: INSERT, UPDATE, DELETE/TRUNCATE --------------------------


--------------------------- INSERT --------------------------
INSERT INTO mes_reves (
    pseudo_reveur, 
    titre, 
    recit, 
    lucide, 
    recurrent,
    date, 
    emotions
) VALUES (
    'kelly slater',
    'ce bon vieux reve',
    'je surfais sur la vie toute la sainte journée',
    FALSE,
    TRUE,
    1700232503, 
    'excitation'
),(
    'rene la taupe',
    'la terre est plate',
    'je creusais jusqu"au bout de la terre',
    FALSE,
    TRUE,
    1700232502, 
    'tristesse'
);


--------------------------- UPDATE --------------------------
UPDATE mes_reves
SET pseudo_reveur = 'pseudo_plus_generique'
-- Si on ne met pas de where, ca change les valeurs de toute la colonne. 
WHERE pseudo_reveur == 'pseudo_generique'

--------------------------- DELETE --------------------------
DELETE FROM mes_reves
-- Si on ne met pas de where ca delete tout ( revient au meme que TRUNCATE ) 
WHERE pseudo_reveur == 'kelly slater'






SELECT * FROM mes_reves