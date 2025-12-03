USE Chinook;

-- =================================================================
-- PROJETO: Análise de Dados com SQL (Chinook Database)
-- DESCRIÇÃO: Resolução de exercícios práticos cobrindo desde 
-- comandos básicos até JOINS complexos e agregações.
-- =================================================================

-- >>> NÍVEL 1: Consultas Básicas (Seleção e Filtros) <<<

-- 1. Filtrando registros específicos (clientes no Brasil) usando WHERE
SELECT
*
FROM Customer
WHERE Country = 'Brazil';

-- 2. Selecionando colunas específicas e filtrando string (Cargo de Suporte)
SELECT
e.FirstName,
e.LastName
FROM Employee e
WHERE Title = 'Sales Support Agent';

-- 3. Utilizando operadores de comparação (>) para filtrar dados numéricos (Músicas > 4 min)
SELECT
Name
FROM Track
WHERE Milliseconds > 240000;

-- 4. Identificando valores únicos em uma coluna com DISTINCT
SELECT
DISTINCT Country
FROM Customer;

-- 5. Ordenando resultados alfabeticamente com ORDER BY
SELECT
FirstName,
LastName,
City
FROM Customer
ORDER BY LastName;


-- >>> NÍVEL 2: Consultas Relacionais (JOINs) <<<

-- 6. Unindo tabelas (Álbum e Artista) através de chave estrangeira com INNER JOIN
SELECT
al.Title,
ar.Name
FROM Album al
JOIN Artist ar ON al.ArtistId = ar.ArtistId;

-- 7. Cruzando dados de transações (Faturas) com dados de cadastro (Clientes)
SELECT
i.InvoiceId,
i.InvoiceDate,
c.FirstName,
c.LastName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId;

-- 8. Relacionando tabelas de categorização (Músicas e Gêneros)
SELECT
t.Name,
g.Name
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId;

-- 9. Aplicando filtros (WHERE) em resultados de tabelas unidas (JOIN)
SELECT
t.Name
FROM Track t
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
WHERE mt.Name = 'MPEG audio file';

-- 10. Realizando JOIN múltiplo (3 tabelas) para conectar Música -> Álbum -> Artista
SELECT
t.Name AS track,
al.Title AS album,
ar.Name AS artist
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId;


-- >>> NÍVEL 3: Agregação e Análise de Dados (GROUP BY) <<<

-- 11. Calculando métricas gerais: Contagem total de itens (Músicas)
SELECT
COUNT(TrackId) AS total_track
FROM Track;

-- 12. Calculando métricas financeiras: Soma total de faturas
SELECT
SUM(Total) AS total_invoice
FROM Invoice;

-- 13. Agrupando dados (GROUP BY) para contar clientes por categoria (País)
SELECT
Country,
COUNT(CustomerId) AS total_customers
FROM Customer
GROUP BY Country;

-- 14. Criando Ranking: Top 5 países com mais faturas (GROUP BY + ORDER BY DESC)
SELECT TOP 5
BillingCountry,
COUNT(InvoiceId) AS total_invoices
FROM Invoice
GROUP BY BillingCountry
ORDER BY total_invoices DESC;

-- 15. Identificando o Artista Top 1 unindo 3 tabelas e agrupando resultados
SELECT TOP 1
ar.Name AS artist,
COUNT(tr.TrackId) AS total_tracks
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track tr ON al.AlbumId = tr.AlbumId
GROUP BY ar.Name
ORDER BY total_tracks DESC;