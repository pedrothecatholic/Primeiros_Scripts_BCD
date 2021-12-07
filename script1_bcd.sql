/*
	Comentario em bloco
*/
#Comentario em linha

#Criar um database
create database dbFilmesTurmaA;

#permite vizualizar os databases existente no banco de dados
show databases;

#apaga um database
drop database dbFilmesTurmaA;

#selecionar um database a ser utilizado
use dbFilmesTurmaA;

#create table: permite criar uma tabela no BD

#Tabela de Genero
create table tblGenero (
	idGenero int not null auto_increment primary key,
    nome varchar(30) not null,
    unique index(idGenero)
);

#vizualiza todas as tabelas existentes no database
show tables;

#permite vizualizar a estrutura de uma tabela
desc tblGenero;

#Tabela de Filme
create table tblFilme(
	idFilme int not null auto_increment,
    nome varchar(80) not null,
    tituloOriginal varchar(80),
    duracao time not null,
    sinopse text not null,
    dataLancamento date not null,
    dataRelancamento date,
    primary key(idFilme),
    unique index(idFilme)
);

#Tabela de Nacionalidade
create table tblNacionalidade(
	idNacionalidade int not null auto_increment primary key,
    nome varchar(30) not null,
    unique index(idNacionalidade)
);

#Apaga uma tabela
drop table tblNacionalidade;

#Tabela de Sexo
create table tblSexo(
	idSexo int not null auto_increment primary key,
    nome varchar(10) not null,
    unique index(idSexo)
);

#Tabela de Ator
create table tblAtor(
	idAtor int not null auto_increment primary key,
    nome varchar(40)not null,
    nomeArtistico varchar(80),
    dataNascimento date not null,
    dataFalecimento date,
    biografia text,
    idSexo int not null,
    constraint FK_Sexo_Ator #cria um nome para o relacionamento
    foreign key (idSexo) #especifica nesta tabela quem será a FK
    references tblSexo(idSexo) #especifica de onde está a PK
);

create table tblFilmeAtor (
	idFilmeAtor int not null auto_increment primary key,
	idFilme int not null,
    idAtor int not null,
    
    #Relacionamento com Filme
    constraint FK_Filme_FilmeAtor
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    #Relacionamento com Ator
    constraint FK_Ator_FilmeAtor
    foreign key (idAtor)
    references tblAtor (idAtor),
    
    unique index (idFilmeAtor)
);

show tables;

#Tabela Diretor 
create table tblDiretor (
	idDiretor int not null auto_increment primary key,
    nome varchar(8),
    nomeArtistico varchar (80),
    dataNasc date not null,
    idSexo int not null,
    unique index(idDiretor)
);

#Alterando a estrutura de uma tabela
#modify column - permite modificar as propriedades de um atributo

alter table tblDiretor
	modify column nome varchar (80) not null;

#change column - permite renomear o nome de um atributo e 
#alterar a estrutura de dados e propriedades
    
alter table tblDiretor
	change column dataNasc dataNascimento date not null;

#add column - permite adicionar um novo atributo
alter table tblDiretor
	add column biografia text;

#add constraint - permite adicionar um novo relacionamento    
alter table tblDiretor
	add constraint FK_Sexo_Diretor
		foreign key (idSexo)
        references tblsexo (idSexo); 

#drop column - permite apagar uma coluna
alter table tblDiretor
	drop column idSexo;

#drop foreign key - permite apagar um relacionamento
alter table tblDiretor
	drop foreign key FK_Sexo_Diretor;
    
alter table tblDiretor
	add column idSexo int not null,
    add constraint FK_Sexo_Diretor
		foreign key (idSexo)
        references tblSexo (idSexo);

desc tblDiretor;

create table tblRoteirista (
	idRoteirista int not null auto_increment primary key,
    nome varchar(40)not null,
    nomeArtistico varchar(80),
    dataNascimento date not null,
    dataFalecimento date,
    idSexo int not null,
    constraint FK_Sexo_Roteirista #cria um nome para o relacionamento
    foreign key (idSexo) #especifica nesta tabela quem será a FK
    references tblSexo(idSexo), #especifica de onde está a PK
    unique index (idRoteirista)
);

create table tblFilmeRoteirista (
	idFilmeRoteirista int not null auto_increment primary key,
    idFilme int not null,
    idRoteirista int not null
);

create table tblFilmeGenero (
	idFilmeGenero int not null auto_increment primary key,
    idFilme int not null,
    idGenero int not null
);

create table tblFilmeDiretor (
	idFilmeDiretor int not null auto_increment primary key,
    idFilme int not null,
    idDiretor int not null
);

create table tblDiretorNacionalidade (
	idDiretorNacionalidade int not null auto_increment primary key,
    idDiretor int not null,
    idNacionalidade int not null
);

create table tblRoteiristaNacionalidade(
	idRoteiristaNacionalidade int not null auto_increment primary key,
    idRoteirista int not null,
    idNacionalidade int not null
);

create table tblAtorNacionalidade (
	idAtorNacionalidade int not null auto_increment primary key,
    idAtor int not null,
    idNacionalidade int not null
)

