--
-- Vous pouvez remplacer {-887.48388671875, -2311.68872070313,  -3.50776553153992, 142.503463745117} par la position par defaut où seront spawn les nouveaux utilisateurs
--
ALTER TABLE `users` ADD COLUMN lastpos VARCHAR(255) DEFAULT '{706.98700000000, -964.94200000000,  31.39550000000000, 142.503463745117}';