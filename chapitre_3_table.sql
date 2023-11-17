-- SQLite

--CHAPITRE 3: TABLE: CREATE, ALTER , DROP --------------------------

---------------------------- CREATE ----------------------------
CREATE TABLE mes_reves (
    id_reve INTEGER PRIMARY KEY AUTOINCREMENT,
    -- id_utilisateur FOREIGN KEY,
    pseudo_reveur VARCHAR(40), 
    titre VARCHAR(40), 
    recit TEXT,
    lucide BOOLEAN,
    recurrent BOOLEAN, 
    date DATETIME
)
---------------------------- ALTER --------------------------
-- // Rajoute une colonne à la table existante
ALTER TABLE mes_reves
ADD emotion VARCHAR(20);

-- // Efface une colonne d'une table existante
-- ATTENTION IF DROP syntax, faire manip sqllite3
ALTER TABLE mes_reves
DROP COLUMN emotion;

-- // Renomme une colonne d'une table existante
ALTER TABLE mes_reves
RENAME COLUMN emotion TO emotions ;

-- // modifie le type d'une colonne d'une table existante
-- ATTENTION IF DROP syntax, faire manip sqllite3
ALTER TABLE mes_reves
ALTER COLUMN emotions TEXT ;

--------------------------- DROP --------------------------
DROP TABLE mes_reves



-------------------------- BONUS ---------------------------
-- AFFICHER LENSEMBLE DES COLONNES ET LEUR TYPE 
PRAGMA table_info(mes_reves);









