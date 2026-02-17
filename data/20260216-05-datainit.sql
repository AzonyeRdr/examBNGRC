-- Insertion des régions (si nécessaire)
INSERT INTO bngrc_region (nom) VALUES
	('Atsinanana'),
	('Diana'),
	('Vatovavy-Fitovinany'),
	('Atsimo-Atsinanana'),
	('Menabe');

-- Insertion des villes (si non déjà présentes)
INSERT INTO bngrc_ville (nom, idregion, nbsinistres) VALUES
	('Toamasina', 1, 1000),
	('Nosy Be', 2, 1000),
	('Mananjary', 3, 1000),
	('Farafangana', 4, 1000),
	('Morondava', 5, 1000);

-- Insertion des types d'articles (si non déjà présents)
INSERT INTO bngrc_type_articles (nom, categorie, prix_unitaire, unite) VALUES
	('Bâche', 'material', 15000, 'unité'),
	('Tôle', 'material', 25000, 'unité'),
	('Argent', 'argent', 1, 'MGA'),
	('Eau (L)', 'nature', 1000, 'L'),
	('Riz (kg)', 'nature', 3000, 'kg'),
	('groupe', 'material', 6750000, 'unité'),
	('Haricots', 'nature', 4000, 'kg'),
	('Clous (kg)', 'material', 8000, 'kg'),
	('Bois', 'material', 10000, 'unité'),
	('Huile (L)', 'nature', 6000, 'L');

INSERT INTO bngrc_configuration (nom, valeur) VALUES ('FRAIS_ACHAT_PERCENT', '10');

-- Insertion des besoins (en supposant que les IDs sont attribués dans l'ordre d'insertion ci-dessus)
-- Remplacer les IDs par SELECT si besoin d'automatiser
INSERT INTO bngrc_besoin_initial (ville_id, type_article_id, quantite, date_demande) VALUES
	(1, 1, 200, '2026-02-15'), -- Toamasina, Bâche
	(2, 2, 40, '2026-02-15'), -- Nosy Be, Tôle
	(3, 3, 6000000, '2026-02-15'), -- Mananjary, Argent
	(1, 4, 1500, '2026-02-15'), -- Toamasina, Eau (L)
	(2, 5, 300, '2026-02-15'), -- Nosy Be, Riz (kg)
	(3, 2, 80, '2026-02-15'), -- Mananjary, Tôle
	(2, 3, 4000000, '2026-02-15'), -- Nosy Be, Argent
	(4, 1, 150, '2026-02-16'), -- Farafangana, Bâche
	(3, 5, 500, '2026-02-15'), -- Mananjary, Riz (kg)
	(4, 3, 8000000, '2026-02-16'), -- Farafangana, Argent
	(5, 5, 700, '2026-02-16'), -- Morondava, Riz (kg)
	(1, 3, 12000000, '2026-02-16'), -- Toamasina, Argent
	(5, 3, 10000000, '2026-02-16'), -- Morondava, Argent
	(4, 4, 1000, '2026-02-15'), -- Farafangana, Eau (L)
	(5, 1, 180, '2026-02-16'), -- Morondava, Bâche
	(1, 6, 3, '2026-02-15'), -- Toamasina, groupe
	(1, 5, 800, '2026-02-16'), -- Toamasina, Riz (kg)
	(2, 7, 200, '2026-02-16'), -- Nosy Be, Haricots
	(3, 8, 60, '2026-02-16'), -- Mananjary, Clous (kg)
	(5, 4, 1200, '2026-02-15'), -- Morondava, Eau (L)
	(4, 5, 600, '2026-02-16'), -- Farafangana, Riz (kg)
	(5, 9, 150, '2026-02-15'), -- Morondava, Bois
	(1, 2, 120, '2026-02-16'), -- Toamasina, Tôle
	(2, 8, 30, '2026-02-16'), -- Nosy Be, Clous (kg)
	(3, 10, 120, '2026-02-16'), -- Mananjary, Huile (L)
	(4, 9, 100, '2026-02-15'); -- Farafangana, Bois

-- Insertion des dons dans la table bngrc_dons
-- On suppose que les types d'articles existent déjà (voir test.sql)
-- Remplacer les IDs par des SELECT si besoin d'automatiser

INSERT INTO bngrc_dons_initial (type_article_id, quantite, date_don) VALUES
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Argent' LIMIT 1), 5000000, '2026-02-16'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Argent' LIMIT 1), 3000000, '2026-02-16'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Argent' LIMIT 1), 4000000, '2026-02-17'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Argent' LIMIT 1), 1500000, '2026-02-17'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Argent' LIMIT 1), 6000000, '2026-02-17'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Riz (kg)' LIMIT 1), 400, '2026-02-16'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Eau (L)' LIMIT 1), 600, '2026-02-16'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Tôle' LIMIT 1), 50, '2026-02-17'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Bâche' LIMIT 1), 70, '2026-02-17'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Haricots' LIMIT 1), 100, '2026-02-17'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Riz (kg)' LIMIT 1), 2000, '2026-02-18'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Tôle' LIMIT 1), 300, '2026-02-18'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Eau (L)' LIMIT 1), 5000, '2026-02-18'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Argent' LIMIT 1), 20000000, '2026-02-19'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Bâche' LIMIT 1), 500, '2026-02-19'),
  ((SELECT id FROM bngrc_type_articles WHERE nom = 'Haricots' LIMIT 1), 88, '2026-02-17');
