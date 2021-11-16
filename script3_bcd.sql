#SELECT
/*
	-SELECT: especifica o campos a serem visualizados na pesquisa
    
    -FROM: especifica quais tabelas serão utilizadas na pesquisa
    
    -WHERE: especifica quais os critérios de filtros serão utilizados
*/

#Retorna todas as colunas e todos os registros
select * from tblFilme;

select tblFilme.* from tblfilme;

#select com colunas especificas no filtro
select nome, sinopse from tblFilme;
select tblFilme.nome, tblFilme.sinopse from tblFilme;


# as - permite criar um alias (apelido) para uma coluna ou tabela
select filme.nome as nomeFilme, duracao, sinopse from tblFilme as filme;

select nome, sinopse
	from tblfilme
    where idFilme = 1;
    
select nome, sinopse
	from tblfilme
    where nome like '%do%';

/*
Operadores lógicos:
	and
    or
    not

*/

/*    
Operadores de comparação:
	=
    <
    >
    <=
    >=
    like
    <> -> "diferente"


	like - busca os dados pela igualdade, como se fosse o (=)
    like '%var' - busca pelo final do atributo
    like 'var%' - busca pelo início do atributo
    like '%var%' - busca por qualquer árte do atributo: início, meio e fim


*/

use dbFilmesTurmaA;
select * from tblFilme;

alter table tblFilme
	add column qtde int;
    
update tblFilme set qtde = 5
	where idFilme = 1;
    
#Exemplos usando operadores de comparação e operadores lógicos
select * from tblFilme
	where qtde <= 5;

select nome, qtde from tblFilme
	where qtde <> 5;

select nome, qtde from tblFilme
	where not (qtde = 5);

select nome, qtde from tblFilme
	where qtde >= 3 and qtde <= 6;

#between = permite localizar por uma range de valores
#Exemplo para não escrever o atributo duas vezes
select nome, qtde from tblFilme
	where qtde between 3 and 6;
    
select nome, qtde from tblFilme
	where qtde not between 3 and 6;

select nome, qtde from tblfilme
	where   qtde = 2 or 
			qtde = 4 or 
            qtde = 6 or 
            qtde = 7;	 

#in() - permite filtrar por uma sequencia de valores, não
#necessitando escrever várias vezes um atributo 
#OBS: só funciona com o operador lógico OR
select nome, qtde
	from tblfilme
    where qtde in (2, 4, 6, 7);
    
select nome, qtde
	from tblfilme
    where qtde not in (2, 4, 6, 7);
    
#Ordenação de dados
	#order by
		#ASC = ordenação crescente
        #DESC  =ordenação decrescente
        
        
select * from tblFilme order by nome asc;
select * from tblFilme order by nome desc, qtde asc;

select nome, qtde
	from tblfilme
    where nome like '%de%' and 
		qtde in (3, 4, 6)
        order by nome asc;

#limit = permite limitar a qtde de resultado na tela        
select * from tblFilme limit 2;

#Encontrando o último registro da tabela
select * from tblFilme 
	order by idFilme desc limit 1;

#Encontrando o primeiro registro da tabela
select * from tblFilme 
	order by idFilme asc limit 1;

#MAX - retorna o maior valor de um atributo
#MIN - retorna o menor valor de um atributo

select max(qtde) as qtdeFilmes from tblFilme;
select min(qtde) as qtdeFilmes from tblFilme;

#count - retorna a qtde de itens no filtro
#OBS: ele ignora os valores null
select count(*) as qtdeFilmes from tblFilme 
	where nome like '%rei%';

select 	count(dataRelancamento) as qtdeDataRelancamento,
		count(nome) as qtdeNomeFilme 
        from tblFilme;
        
#sum - retorna a soma de todas as colunas que foram especificadas
select sum(qtde) as soma from tblFilme;

#avg - retorna a média de uma coluna
select avg(qtde) as media from tblFilme;

#round - define a qtde de casas decimais após a vírgula
select round(avg(qtde),1) as media from tblFilme;






