# 🎵 Análise de Dados com SQL - Chinook Database

![SQL Server](https://img.shields.io/badge/Database-SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge)

Este repositório contém a resolução de exercícios práticos de SQL focados em análise de dados, utilizando o banco de dados **Chinook**. O projeto simula cenários reais de uma loja de música digital, envolvendo consultas para relatórios de vendas, performance de artistas e comportamento de clientes.

## 🎯 Objetivo do Projeto
Demonstrar competência técnica na manipulação e consulta de bancos de dados relacionais, aplicando desde conceitos fundamentais até técnicas de agregação para responder a perguntas de negócio.

## 🗂️ Estrutura do Repositório

* `database_chinook.sql`: Script completo para criação e população do banco de dados (Schema e Dados).
* `resolucao_desafio_chinook.sql`: Arquivo contendo as 15 queries desenvolvidas e comentadas, separadas por níveis de complexidade.

## 🧠 Habilidades Demonstradas

Neste projeto, apliquei os seguintes conceitos de **SQL (T-SQL)**:

* **Consultas Básicas:** Seleção de colunas, filtragem de dados (`WHERE`, `DISTINCT`) e ordenação (`ORDER BY`).
* **Joins e Relacionamentos:** Utilização de `INNER JOIN` para conectar múltiplas tabelas (ex: Clientes, Faturas, Músicas, Álbuns e Artistas).
* **Agregação de Dados:** Uso de funções como `COUNT`, `SUM` para métricas quantitativas.
* **Agrupamento:** Segmentação de dados com `GROUP BY` para análises por categorias (Países, Artistas, etc.).
* **Filtragem de Topo:** Uso de `TOP` para criação de rankings.

## 🛠️ Como Executar

Para testar as consultas deste repositório:

1.  Tenha o **SQL Server** instalado (ou utilize o Azure Data Studio).
2.  Clone este repositório:
    ```bash
    git clone [https://github.com/MarcoViana0303/analise_dados_chinook.git](https://github.com/MarcoViana0303/analise_dados_chinook.git)
    ```
3.  Abra o arquivo `database_chinook.sql` no seu SGBD (SQL Server) e execute para criar o ambiente.
4.  Abra o arquivo `resolucao_desafio_chinook.sql` para visualizar e rodar as queries de análise.

---

### 📊 Exemplo de Análise
*Uma das queries desenvolvidas para identificar os Top 5 países com maior volume de faturas:*

```sql
SELECT TOP 5
    BillingCountry,
    COUNT(InvoiceId) AS total_invoices
FROM Invoice
GROUP BY BillingCountry
ORDER BY total_invoices DESC;
```
## Feedback

Encontrou algum erro ou está com alguma dúvida? Não deixe de entrar em contato comigo!


## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/marco-viana2022/)
[![gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](https://marcoviana.dev@gmail.com/)
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://marcoviana-dev.vercel.app/)

