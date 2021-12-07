## RELACIONAMENTOS E VIEWS
#group by - permite agrupar por colunas no banco, ele elimina a repetição
# da coluna trazendo apenas uma ocorrência para ela

select tblFilme.nome as nomeFilme, tblFilme.dataLancamento,
       tblFilme.sinopse, tblGenero.nome as nomeGenero,
       tblAtor.nome as nomeAtor, tblAtor.dataNascimento,
       tblNacionalidade.nome as nacionalidadeAtor,
       tblDiretor.nome as nomeDiretor,
       tblRoteirista.nome as nomeRoteirista
       
from tblFilme 
     inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
	 inner join tblGenero
		on tblGenero.idGenero = tblFilmeGenero.idGenero
	 inner join tblFilmeAtor
		on tblFilme.idFilme = tblFilmeAtor.idFilme
	 inner join tblAtor
		on tblAtor.idAtor = tblFilmeAtor.idAtor
	 inner join tblFilmeDiretor 
		on tblFilme.idfilme = tblFilmeDiretor.idFilme
	 inner join tblDiretor
		on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
	 inner join tblFilmeRoteirista
		on tblFilme.idFilme = tblFilmeRoteirista.idFilme
	 inner join tblRoteirista 
		on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista
	 inner join tblAtorNacionalidade
		on tblAtor.idAtor = tblAtorNacionalidade.idAtor
	 inner join tblNacionalidade 
		on tblNacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade


group by tblFilme.nome, tblAtor.nome
order by tblFilme.nome asc, tblAtor.nome desc, tblDiretor.nome asc;



##CRIANDO UMA VIEW (uma view é um script apenas de select que fica 
#armazenado diretamente no banco de dados e pré-processado, 
#fazendo com que, no back-end, fique um código mais limpo e que sua aplicação
#tenha um poder de processamento mais rápido)

#create view - cria uma view
create view vwListarFilmes as 
	select tblFilme.nome as nomeFilme, tblFilme.dataLancamento,
		   tblFilme.sinopse, tblGenero.nome as nomeGenero,
		   tblAtor.nome as nomeAtor, tblAtor.dataNascimento,
		   tblNacionalidade.nome as nacionalidadeAtor,
		   tblDiretor.nome as nomeDiretor,
		   tblRoteirista.nome as nomeRoteirista
		   
	from tblFilme 
		 inner join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		 inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero
		 inner join tblFilmeAtor
			on tblFilme.idFilme = tblFilmeAtor.idFilme
		 inner join tblAtor
			on tblAtor.idAtor = tblFilmeAtor.idAtor
		 inner join tblFilmeDiretor 
			on tblFilme.idfilme = tblFilmeDiretor.idFilme
		 inner join tblDiretor
			on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
		 inner join tblFilmeRoteirista
			on tblFilme.idFilme = tblFilmeRoteirista.idFilme
		 inner join tblRoteirista 
			on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista
		 inner join tblAtorNacionalidade
			on tblAtor.idAtor = tblAtorNacionalidade.idAtor
		 inner join tblNacionalidade 
			on tblNacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade


	#group by - permite agrupar por colunas no banco, ele elimina a repetição
	# da coluna trazendo apenas uma ocorrência para ela
	group by tblFilme.nome, tblAtor.nome
	order by tblFilme.nome asc, tblAtor.nome desc, tblDiretor.nome asc;

#permite visualizar todas as views dentro do BD
show tables;

#permite executar uma view
select * from vwListarFilmes;

drop view vwListarFilmes;

