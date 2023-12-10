CREATE TABLE IF NOT EXISTS reves (
-- On definit les colonnes et leur type
    id_reve INTEGER PRIMARY KEY AUTOINCREMENT,
    pseudo_reveur CHAR(30),
    date DATETIME,
    heure CHAR(20),
    titre CHAR(40) , 
    recit TEXT NOT NULL,
    cauchemard BOOLEAN,
    lucide BOOLEAN,
    nb_personnages INTEGER,
    action CHAR(20),
    emotion CHAR(20)
)

