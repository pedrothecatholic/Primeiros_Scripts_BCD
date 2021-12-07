#Inserts, Updates, Deletes e Select

use dbFilmesTurmaA;

insert into tblGenero (nome) 
	values('Aventura');

#Cadastro de Múltiplos Valores
insert into tblGenero (nome) 
	values  ('Fantasia'),
			('Drama'),
			('Terror'),
			('Comédia');
            
#Tabela de Filmes
insert into tblFilme(nome, 
					duracao, 
                    sinopse, 
                    dataLancamento, 
                    dataRelancamento, 
                    tituloOriginal,
                    qtde)
	values 
    
     ('Forrest Gump - O Contador de Histórias',
		'02:20:00',
		'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
		'1994-12-07',
		null,
		'Forrest Gump',
        5),
    
    ('Um Sonho de Liberdade',
		'02:20:00',
		'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.',
		'1995-01-25',
		null,
		'The Shawshank Redemption',
        3),
    
    ('VINGADORES: ULTIMATO',
		'03:01:00',
		'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.',
		'2019-04-25',
		'2019-07-11',
		'Avengers: Endgame',
        5),
		
	('O Senhor dos Anéis - O Retorno do Rei',
		'03:21:00',
		'Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf (Ian McKellen) e Pippin (Billy Boyd) partam para o local na intenção de ajudar a resistência. Um exército é reunido por Theoden (Bernard Hill) em Rohan, em mais uma tentativa de deter as forças de Sauron. Enquanto isso Frodo (Elijah Wood), Sam (Sean Astin) e Gollum (Andy Serkins) seguem sua viagem rumo à Montanha da Perdição, para destruir o Um Anel.',
		'2003-12-25',
		null,
		'The Lord of the Rings: The Return of the King',
        7);

insert into tblFilmeGenero (idFilme, idGenero)
				values  (1, 1),
						(1, 2),
                        (1, 3),
                        (2, 2),
                        (2, 3);
                        
insert into tblAtor (nome,
					nomeArtistico,
                    dataNascimento,
                    dataFalecimento,
                    biografia)
			values ('Thomas Jeffrey Hanks',
					null,
                    '1956-07-09',
                    null,
                    'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.Em 1984, veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah. Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987), tornando-o conhecido do grande público.Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator. Apesar de consagrado como comediante, aos poucos passou a experimentar outros gêneros.'
					'Masculino'),
                    
                    ('Robin Virginia Gayle Wright',
					'Robin Wright Penn',
                    '1966-04-08',
                    null,
                    'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia. Quando jovem, frequentou a La Jolla High School, em La Jolla, e a Taft High School em Woodland Hills, em Los Angeles.A atriz começou sua carreira como modelo quando tinha 14 anos. Aos 18, interpretou Kelly Capwell na novela Santa Barbara (1984), da NBC Daytime, recebendo diversas indicações ao Daytime Emmy e voltando os olhos do público para seu trabalho.Das telas da TV para o cinema, Wright conseguiu um papel em Hollywood Vice Squad (1986) e protagonizou uma princesa em A Princesa Prometida, em 1987.'
					'Feminino');
#Update
update tblFilme set duracao = '03:21:00' where idFilme = 2;
  
#Delete
delete from tblGenero where idGenero = 8;


select * from tblGenero;
select * from tblFilme;
select * from tblFilmeGenero;

insert into tblGenero (nome) values ('Romance');