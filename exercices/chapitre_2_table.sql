--CHAPITRE 2: TABLE: CREATE, ALTER , DROP --------------------------

---------------------------- CREATE TABLE --------------------------

CREATE TABLE mes_reves (
-- On definit les colonnes et leur type
    id_reve INTEGER PRIMARY KEY AUTOINCREMENT,
    pseudo_reveur CHAR(20),
    date DATETIME,
    titre CHAR(40) UNIQUE, 
    recit TEXT NOT NULL,
    cauchemard BOOLEAN,
    lucide BOOLEAN,
    action CHAR(20),
    emotion CHAR(20)
)
-- CLAUSE CREATE TABLE AVEC LES CLES ETRANGERES 
CREATE TABLE mes_reves (
-- On definit les colonnes et leur type
    id_reve INTEGER PRIMARY KEY AUTOINCREMENT,
    id_utilisateur INTEGER UNIQUE,
    date DATETIME,
    titre CHAR(40) UNIQUE, 
    recit TEXT NOT NULL,
    cauchemard BOOLEAN,
    lucide BOOLEAN,
    id_action INTEGER,
    -- On définit les clés étrangères
    FOREIGN KEY(id_utilisateur) REFERENCES utilisateurs(id_utilisateur)
    FOREIGN KEY(id_action) REFERENCES actions(id_action)
)


---------------------------- ALTER --------------------------
-- // Rajoute une colonne à la table existante
ALTER TABLE mes_reves 
ADD emotion VARCHAR(20);
-- // Efface une colonne d'une table existante
-- ATTENTION il faut faire manip sqllite3 voir tuto
ALTER TABLE mes_reves
DROP COLUMN emotion;

-- // Renomme une colonne d'une table existante
ALTER TABLE mes_reves
RENAME COLUMN emotion TO emotions ;

-- // modifie le type d'une colonne d'une table existante
-- ATTENTION il faut faire manip sqllite3 voir tuto
ALTER TABLE mes_reves
ALTER COLUMN emotions TEXT ;

--------------------------- DROP --------------------------
DROP TABLE IF EXISTS mes_reves;
DROP TABLE IF EXISTS actions;
DROP TABLE IF EXISTS emotions;
DROP TABLE IF EXISTS mes_reves;
DROP TABLE IF EXISTS reve_emotions;
DROP TABLE IF EXISTS utilisateurs;


-------------------------- BONUS ---------------------------
-- AFFICHER LENSEMBLE DES COLONNES ET LEUR TYPE 
PRAGMA table_info(mes_reves);





