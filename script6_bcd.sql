use dbFilmesTurmaA;
#RELACIONAMENTO ENTRE TABELAS
#FORMA1 - RELACIONAMENTO PELO WHERE
select tblFilme.nome as nomeFilme, tblFilme.duracao,
		tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from  tblFilme, tblGenero, tblFilmeGenero
where tblFilme.idFilme = tblFilmeGenero.idFilme and
		tblGenero.idGenero = tblFilmeGenero.idGenero;

select * from tblFilme;
select * from tblGenero; 
select * from tblFilmeGenero;


#FORMA2 - RELACIONAMENTO PELO FROM
# (MODELO MAIS EFICIENTE)
#inner join - é utilizado para relacionar tabelas e trazer a igualdade entre elas
select tblFilme.nome as nomeFilme, tblFilme.duracao, 
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from   tblFilme inner join tblFilmeGenero
				on tblFilme.idFilme = tblFilmeGenero.idFilme
       inner join tblGenero 
				on tblGenero.idGenero = tblFilmeGenero.idGenero;


#left join - é utilizado relacionar tabelas e trazer a igualdade entre elas e 
#o que existe na tabela da direita que não foi relacionado com a tabela da direita
select tblFilme.nome as nomeFilme, tblFilme.duracao, 
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from   tblFilme left join tblFilmeGenero
				on tblFilme.idFilme = tblFilmeGenero.idFilme
       left join tblGenero 
				on tblGenero.idGenero = tblFilmeGenero.idGenero;
                
                

#right join - é utilizado relacionar tabelas e trazer a igualdade entre elas e 
#o que existe na tabela da direita que não foi relacionado com a tabela da esquerda
select tblFilme.nome as nomeFilme, tblFilme.duracao, 
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from   tblFilme right join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
       right join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero;



#Ex.:  