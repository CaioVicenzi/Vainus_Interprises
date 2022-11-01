use catolica;

-- a) Listar os nomes dos assinantes, seguido dos dados do endereço e os telefones correspondentes

select nm_assinante as "Nome", e.ds_endereco, e.complemento, e.bairro, e.cep, t.ddd, t.n_fone, m.ds_municipio from Assinante
left outer join Endereco as e using (cd_assinante)
left outer join Telefone as t using (cd_endereco)
left outer join Municipio as m using (cd_municipio);

-- b) Listar os nomes dos assinantes, seguido do seu ramo, ordenados por ramo e posteriormente por nome

select Assinante.nm_assinante as "Nome", r.ds_ramo as "Ramo" from Assinante
left outer join Ramo_Atividade as r using (cd_ramo)
order by r.ds_ramo, Assinante.nm_assinante;

-- c) Listar os assinantes do município de Pelotas que são do tipo residencial

select a.nm_assinante as "Nome", m.ds_municipio as "Municipio", t.ds_tipo as "Tipo" from Assinante as a
right join Endereco as E using (cd_assinante) 
inner join Municipio as M using (cd_municipio)
inner join Tipo_Assinante as T using (cd_tipo)
where m.cd_municipio = 1 and t.cd_tipo = 1;

-- d) Listar os nomes dos assinantes que possuem mais de um telefone

select a.nm_assinante, count(n_fone) as "numeros_telefone" from Assinante as a
left join Endereco as e using (cd_assinante)
left join Telefone as t using (cd_endereco)
group by a.nm_assinante
having numeros_telefone > 1;

-- e) Listar os nomes dos assinantes seguido do número do telefone, tipo de assinante comercial, com endereço em Natal
-- ou João Câmara 

select * from Assinante;
select DISTINCT a.nm_assinante as "nome", ta.ds_tipo as "tipo_assinante", m.ds_municipio as "municipio" from Assinante as a
left join endereco as e using (cd_assinante)
inner join telefone as t using (cd_endereco)
inner join tipo_assinante as ta using (cd_tipo)
inner join Municipio as m using (cd_municipio)
where (m.cd_municipio = 2 or m.cd_municipio = 3) and ta.cd_tipo = 2;