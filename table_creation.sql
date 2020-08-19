--
-- Create model Adress
--
CREATE TABLE `pizzeria_adress` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `street` varchar(63) NOT NULL, `street_number` smallint UNSIGNED NOT NULL, `city` varchar(63) NOT NULL, `country` varchar(63) NOT NULL, `code_postal` varchar(31) NOT NULL, `latitude` double precision NOT NULL, `longitude` double precision NOT NULL);
--
-- Create model Credential
--
CREATE TABLE `pizzeria_credential` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `username` varchar(63) NOT NULL, `email` varchar(127) NOT NULL, `password` varchar(511) NOT NULL);
--
-- Create model Employee
--
CREATE TABLE `pizzeria_employee` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `rights` varchar(255) NOT NULL, `role` varchar(15) NOT NULL);
--
-- Create model Ingredient
--
CREATE TABLE `pizzeria_ingredient` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `name` varchar(63) NOT NULL);
--
-- Create model Order
--
CREATE TABLE `pizzeria_order` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `paid` bool NOT NULL, `state` varchar(15) NOT NULL, `adress_id` integer NULL UNIQUE);
--
-- Create model Pizza
--
CREATE TABLE `pizzeria_pizza` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `name` varchar(63) NOT NULL, `image` varchar(127) NOT NULL, `label` varchar(15) NOT NULL, `price` numeric(5, 2) NOT NULL);
--
-- Create model PizzaOrder
--
CREATE TABLE `pizzeria_pizzaorder` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `price` numeric(7, 2) NOT NULL, `order_id` integer NOT NULL, `pizza_id` integer NOT NULL);
--
-- Create model Supplement
--
CREATE TABLE `pizzeria_supplement` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `price` numeric(5, 2) NOT NULL, `ingredient_id` integer NOT NULL);
--
-- Create model User
--
CREATE TABLE `pizzeria_user` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `firstname` varchar(63) NOT NULL, `lastname` varchar(63) NOT NULL, `phone` varchar(15) NOT NULL, `photo` varchar(127) NOT NULL, `adress_id` integer NULL UNIQUE, `credential_id` integer NOT NULL UNIQUE, `employee_id` integer NULL);
--
-- Create model SupplementPizzaOrder
--
CREATE TABLE `pizzeria_supplementpizzaorder` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `pizza_order_id` integer NOT NULL, `supplement_id` integer NOT NULL);
--
-- Create model Store
--
CREATE TABLE `pizzeria_store` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `name` varchar(63) NOT NULL, `hourly` varchar(127) NOT NULL, `phone` varchar(15) NOT NULL, `adress_id` integer NULL UNIQUE);
--
-- Create model Stock
--
CREATE TABLE `pizzeria_stock` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `quantity_value` integer NOT NULL, `quantity_unity` varchar(7) NOT NULL, `ingredient_id` integer NOT NULL, `store_id` integer NOT NULL);
--
-- Add field store to pizza
--
ALTER TABLE `pizzeria_pizza` ADD COLUMN `store_id` integer NOT NULL , ADD CONSTRAINT `pizzeria_pizza_store_id_3912206a_fk_pizzeria_store_id` FOREIGN KEY (`store_id`) REFERENCES `pizzeria_store`(`id`);
--
-- Add field user to order
--
ALTER TABLE `pizzeria_order` ADD COLUMN `user_id` integer NULL , ADD CONSTRAINT `pizzeria_order_user_id_8abbb849_fk_pizzeria_user_id` FOREIGN KEY (`user_id`) REFERENCES `pizzeria_user`(`id`);
--
-- Create model IngredientPizza
--
CREATE TABLE `pizzeria_ingredientpizza` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `quantity_value` integer NOT NULL, `quantity_unity` varchar(7) NOT NULL, `ingredient_id` integer NOT NULL, `pizza_id` integer NOT NULL);
--
-- Create model IngredientInfo
--
CREATE TABLE `pizzeria_ingredientinfo` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `name` varchar(15) NOT NULL, `ingredient_id` integer NOT NULL);
--
-- Add field store to employee
--
ALTER TABLE `pizzeria_employee` ADD COLUMN `store_id` integer NOT NULL , ADD CONSTRAINT `pizzeria_employee_store_id_010a3669_fk_pizzeria_store_id` FOREIGN KEY (`store_id`) REFERENCES `pizzeria_store`(`id`);
ALTER TABLE `pizzeria_order` ADD CONSTRAINT `pizzeria_order_adress_id_ccc680f6_fk_pizzeria_adress_id` FOREIGN KEY (`adress_id`) REFERENCES `pizzeria_adress` (`id`);
ALTER TABLE `pizzeria_pizzaorder` ADD CONSTRAINT `pizzeria_pizzaorder_order_id_e6bc2877_fk_pizzeria_order_id` FOREIGN KEY (`order_id`) REFERENCES `pizzeria_order` (`id`);
ALTER TABLE `pizzeria_pizzaorder` ADD CONSTRAINT `pizzeria_pizzaorder_pizza_id_593edf2b_fk_pizzeria_pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `pizzeria_pizza` (`id`);
CREATE INDEX `pizzeria_pizzaorder_order_id_e6bc2877` ON `pizzeria_pizzaorder` (`order_id`);
CREATE INDEX `pizzeria_pizzaorder_pizza_id_593edf2b` ON `pizzeria_pizzaorder` (`pizza_id`);
ALTER TABLE `pizzeria_supplement` ADD CONSTRAINT `pizzeria_supplement_ingredient_id_3099b519_fk_pizzeria_` FOREIGN KEY (`ingredient_id`) REFERENCES `pizzeria_ingredient` (`id`);
CREATE INDEX `pizzeria_supplement_ingredient_id_3099b519` ON `pizzeria_supplement` (`ingredient_id`);
ALTER TABLE `pizzeria_user` ADD CONSTRAINT `pizzeria_user_adress_id_2c7aaab3_fk_pizzeria_adress_id` FOREIGN KEY (`adress_id`) REFERENCES `pizzeria_adress` (`id`);
ALTER TABLE `pizzeria_user` ADD CONSTRAINT `pizzeria_user_credential_id_704cae36_fk_pizzeria_credential_id` FOREIGN KEY (`credential_id`) REFERENCES `pizzeria_credential` (`id`);
ALTER TABLE `pizzeria_user` ADD CONSTRAINT `pizzeria_user_employee_id_3847da70_fk_pizzeria_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `pizzeria_employee` (`id`);
CREATE INDEX `pizzeria_user_employee_id_3847da70` ON `pizzeria_user` (`employee_id`);
ALTER TABLE `pizzeria_supplementpizzaorder` ADD CONSTRAINT `pizzeria_supplementp_pizza_order_id_c668deb5_fk_pizzeria_` FOREIGN KEY (`pizza_order_id`) REFERENCES `pizzeria_pizzaorder` (`id`);
ALTER TABLE `pizzeria_supplementpizzaorder` ADD CONSTRAINT `pizzeria_supplementp_supplement_id_c4ed805a_fk_pizzeria_` FOREIGN KEY (`supplement_id`) REFERENCES `pizzeria_supplement` (`id`);
CREATE INDEX `pizzeria_supplementpizzaorder_pizza_order_id_c668deb5` ON `pizzeria_supplementpizzaorder` (`pizza_order_id`);
CREATE INDEX `pizzeria_supplementpizzaorder_supplement_id_c4ed805a` ON `pizzeria_supplementpizzaorder` (`supplement_id`);
ALTER TABLE `pizzeria_store` ADD CONSTRAINT `pizzeria_store_adress_id_15beda16_fk_pizzeria_adress_id` FOREIGN KEY (`adress_id`) REFERENCES `pizzeria_adress` (`id`);
ALTER TABLE `pizzeria_stock` ADD CONSTRAINT `pizzeria_stock_ingredient_id_bf6365df_fk_pizzeria_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `pizzeria_ingredient` (`id`);
ALTER TABLE `pizzeria_stock` ADD CONSTRAINT `pizzeria_stock_store_id_90667623_fk_pizzeria_store_id` FOREIGN KEY (`store_id`) REFERENCES `pizzeria_store` (`id`);
CREATE INDEX `pizzeria_stock_ingredient_id_bf6365df` ON `pizzeria_stock` (`ingredient_id`);
CREATE INDEX `pizzeria_stock_store_id_90667623` ON `pizzeria_stock` (`store_id`);
CREATE INDEX `pizzeria_pizza_store_id_3912206a` ON `pizzeria_pizza` (`store_id`);
CREATE INDEX `pizzeria_order_user_id_8abbb849` ON `pizzeria_order` (`user_id`);
ALTER TABLE `pizzeria_ingredientpizza` ADD CONSTRAINT `pizzeria_ingredientp_ingredient_id_eb8fdb9a_fk_pizzeria_` FOREIGN KEY (`ingredient_id`) REFERENCES `pizzeria_ingredient` (`id`);
ALTER TABLE `pizzeria_ingredientpizza` ADD CONSTRAINT `pizzeria_ingredientpizza_pizza_id_2498f4a9_fk_pizzeria_pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `pizzeria_pizza` (`id`);
CREATE INDEX `pizzeria_ingredientpizza_ingredient_id_eb8fdb9a` ON `pizzeria_ingredientpizza` (`ingredient_id`);
CREATE INDEX `pizzeria_ingredientpizza_pizza_id_2498f4a9` ON `pizzeria_ingredientpizza` (`pizza_id`);
ALTER TABLE `pizzeria_ingredientinfo` ADD CONSTRAINT `pizzeria_ingredienti_ingredient_id_7609b9dc_fk_pizzeria_` FOREIGN KEY (`ingredient_id`) REFERENCES `pizzeria_ingredient` (`id`);
CREATE INDEX `pizzeria_ingredientinfo_ingredient_id_7609b9dc` ON `pizzeria_ingredientinfo` (`ingredient_id`);
CREATE INDEX `pizzeria_employee_store_id_010a3669` ON `pizzeria_employee` (`store_id`);
