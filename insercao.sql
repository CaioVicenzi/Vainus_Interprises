use catolica;

insert into Ramo_Atividade (ds_ramo) value ("consultorio");
insert into Ramo_Atividade (ds_ramo) value ("livraria");
insert into Ramo_Atividade (ds_ramo) value ("residencia");
insert into Ramo_Atividade (ds_ramo) value ("comercio");

insert into Tipo_Assinante (ds_tipo) values ("residencial");
insert into Tipo_Assinante (ds_tipo) values ("comercial");

insert into Municipio (ds_municipio) values ("Pelotas");
insert into Municipio (ds_municipio) values ("Natal");
insert into Municipio (ds_municipio) values ("João Camara");
insert into Municipio (ds_municipio) values ("Brasília");
insert into Municipio (ds_municipio) values ("Santo André");
insert into Municipio (ds_municipio) values ("Manaus");

insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Maria José Silva", 2, 1);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Pedro Abreu", 1, 3);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Caio", 2, 4);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Ana Maria", 1, 3);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("João", 2, 2);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Zé", 2, 4);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("André", 1, 4);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Hially", 1, 4);
insert into assinante (nm_assinante, cd_tipo, cd_ramo) values ("Vinicius", 2, 3);

insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante) 
values ("Av Castanheiras, 1560", "ap 201", "Aguas Claras", "71906-250", 4, 1);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante)
values ("Rua Azul, 560", "casa 2", "Cores", "70000-250", 2, 2);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante) 
values ("Rua Azul, 560", "casa 2", "Cores", "70000-250", 2, 3);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante) 
values ("Rua Azul, 560", "casa 2", "Pelotas", "80000-250", 1, 4);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante)
values ("Rua A, 560", "casa 2", "Joao Camara", "90000-250", 3, 5);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante)
values ("Rua A, 560", "casa 2", "Flores", "90000-250", 6, 6);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante)
values ("Rua C, 560", "casa 2", "Flores", "20000-250", 6, 7);
insert into endereco (ds_endereco, complemento, bairro, cep, cd_municipio, cd_assinante)
values ("Rua Das Aguias, 300", "casa 10", "Peixes", "10000-253", 5, 8);

insert into telefone (ddd, n_fone, cd_endereco) values (61, "99524-8654", 4);
insert into telefone (ddd, n_fone, cd_endereco) values (62, "93324-7621", 1);
insert into telefone (ddd, n_fone, cd_endereco) values (13, "98414-8743", 5);
insert into telefone (ddd, n_fone, cd_endereco) values (11, "95024-7178", 3);
insert into telefone (ddd, n_fone, cd_endereco) values (11, "96024-7178", 5);
insert into telefone (ddd, n_fone, cd_endereco) values (12, "91212-3214", 5);
