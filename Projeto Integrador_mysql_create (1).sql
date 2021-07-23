CREATE TABLE `usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome completo` varchar(255) NOT NULL,
	`email` varchar(100) NOT NULL,
	`senha` varchar(500) NOT NULL,
	`vendedor` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	`ativo` BOOLEAN NOT NULL,
	`palavra_chave` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`preco` DECIMAL(8,2) NOT NULL,
	`quantidade` int NOT NULL,
	`dtValidade` DATE NOT NULL,
	`categoria_id` bigint NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`id`);




