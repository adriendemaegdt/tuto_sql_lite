

--CHAPITRE 4: CONTENU: INSERT, UPDATE, DELETE/TRUNCATE --------------------------


--------------------------- INSERT --------------------------
INSERT OR IGNORE INTO mes_reves (
    pseudo_reveur,
    date, 
    titre, 
    recit, 
    cauchemard,
    lucide,
    action,
    emotion
) VALUES (
    'kelly slater',
    '2023-04-22 10:34:23.55',
    'ce bon vieux reve',
    'je surfais sur la vie toute la sainte journée',
    FALSE,
    TRUE,
    'surfer', 
    'excitation'
),(
    'rene la taupe',
    '2023-10-22 10:34:23.55',
    'la terre est plate',
    'je creusais jusqu"au bout de la terre',
    FALSE,
    FALSE,
    'creuser',
    'emerveillement'
),(
    'jeannine',
    '2023-02-20 10:34:23.55',
    'l"imbuvable café',
    'j"essayais de boire un café mais la tasse ne se vidait jamais',
    TRUE,
    FALSE,
    'boire',
    'découragement'
);

SELECT * FROM mes_reves

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