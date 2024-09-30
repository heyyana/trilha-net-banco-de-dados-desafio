-- 1 

select Nome, Ano from Filmes;

-- 2 
select Nome, Ano, Duracao from Filmes order by Ano;

-- 3 
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

-- 4 
select Nome, Ano, Duracao from Filmes where Ano = 1997;

-- 5 
select Nome, Ano, Duracao from Filmes where Ano >= 2000;

-- 6 
select Nome, Ano, Duracao from Filmes where Duracao BETWEEN 100 and 150;

-- 7 
select Ano, COUNT(*) as Quantidade
from Filmes group by Ano order by Ano DESC;

-- 8 
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

-- 9 
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome;

-- 10 
select Filmes.Nome AS Nome, Generos.Genero AS Genero from Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11 
select Filmes.Nome AS Nome, Generos.Genero AS Genero from Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
where Generos.Genero = 'Mistério';

-- 12 
select f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel from Filmes f
INNER JOIN ElencoFilme e on f.Id = e.IdFilme INNER JOIN Atores a on e.IdAtor = a.Id;