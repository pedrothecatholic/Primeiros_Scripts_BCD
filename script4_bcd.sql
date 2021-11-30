#concat() - permite fazer a concentração de strings
select concat('Filme: ', nome, 'Duração: ', duracao) as resultado from tblFilme;

#concat_ws() - permite fazer a concatenação utilizando um 
#símbolo com separador

select concat_ws(' - ', nome, duracao, dataLancamento) as resultado from tblFilme;

#locate() - localiza a posição de uma string
select locate('19', sinopse), sinopse from tblFilme;

#reverse() - 
select reverse(nome) as resultado from tblFilme;

#length() - reotrna a qtde de caracteres de uma coluna
select length(nome) as qtde, char_length(nome) as qtde2 from tblFilme;

#insert() - permite inserir um novo conteúdo dentro do texto de uma coluna
#insert(coluna, posição inicial que será acrescentado o conteúdo, qtde de caracteres que será removido, string a ser acrescentada)
select insert(sinopse, 1, 0, 'A sinopse é: ') as resultado from tblFilme;

#substr() - permite extrair um conteúdo de uma string 
select substr(sinopse, 1, 10) as resultado from tblFilme;

alter table tblFilme 
	add column valor decimal;
	
alter table tblFilme 
	modify column valor float;
    
update tblFilme set valor = '6.50'
	where idFilme = 5;

#Realizando operações matemáticas
select nome, qtde, valor, (qtde*valor) as valorTotal from tblFilme;

select nome, valor, round(valor - (valor*10/100), 2) as valorDesconto from tblFilme;

#replace() - permite localizar um caracter e substituir por outro
select replace(nome, '@', 'A') as resultado from tblFilme;

select * from tblFilme;