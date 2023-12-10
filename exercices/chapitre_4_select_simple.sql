--------------------------- CORRECTION EXERCICE --------------------------

-- 1) Selectionne les reves dont le pseudo du reveur est x :
SELECT pseudo_reveur FROM mes_reves WHERE pseudo_reveur = 'x';
-- 2) Selectionne tous les rêves lucides.
SELECT * FROM mes_reves WHERE lucide = TRUE;
-- 3) Selectionne les rêves datant de 2023.
SELECT * FROM mes_reves WHERE date BETWEEN '2023-01-01' and '2023-12-31';
-- 4) Selectionne les rêves dont l’action est de courir. 
SELECT * FROM mes_reves WHERE action = 'courir'
-- 5) Selectionne les rêves dont le titre fait plus de 20 caractères.
SELECT * FROM mes_reves WHERE LENGTH(titre) > 20
-- 6) Selectionne les pseudos des reves étant des cauchemards.
SELECT pseudo_reveur FROM mes_reves WHERE cauchemard = 'TRUE'
-- 7) Selectionne les reves dont le recit  contient je
SELECT * FROM mes_reves WHERE recit LIKE '%je%'





