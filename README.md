# Análise de Vendas: Setor de Cosméticos 💄

Este projeto simula um ambiente de análise de dados de uma empresa de cosméticos, focando na modelagem de um banco de dados relacional e na extração de métricas de desempenho de vendas.

## 📌 Objetivo do Projeto
O objetivo é demonstrar habilidades em **SQL** para estruturar dados e responder perguntas estratégicas de negócio, como identificar produtos mais vendidos e o perfil de consumo por região.

## 🛠️ Tecnologias e Ferramentas
- **SQL:** Para criação do schema e consultas analíticas.
- **Excel/CSV:** Utilizados para a geração da base de dados fictícia.
- **GitHub:** Controle de versão e documentação.

## 📑 Estrutura do Banco de Dados
A modelagem foi baseada em 4 tabelas principais:
- `Clientes`: Dados cadastrais e localização.
- `Produtos`: Catálogo com categorias e preços.
- `Vendas`: Registro de transações financeiras.
- `Itens_Venda`: Detalhamento de cada produto vendido por pedido.

## 🔍 Exemplos de Análises Realizadas
Neste repositório, você encontrará queries SQL que resolvem:
1. **Faturamento Total por Categoria:** Identificação de quais linhas de produtos trazem maior receita.
2. **Ranking de Clientes:** Identificação dos clientes com maior ticket médio.
3. **Desempenho Regional:** Análise de vendas por estado (UF).

## 📁 Como navegar neste repositório
- `/data`: Contém as tabelas brutas em formato .csv.
- `schema.sql`: Script para criação das tabelas e relacionamentos (PK/FK).
- `queries.sql`: Consultas com as análises de negócio.

## 🛠️ Decisões de Engenharia de Dados 

A estruturação foi pensada para suportar consultas analíticas rápidas, garantindo que a normalização dos dados **evite redundâncias** e **inconsistências** no faturamento.


## 📈 Exemplos de Insights (Resultados das Queries)

Abaixo, apresento alguns dos resultados obtidos ao rodar as consultas no banco de dados estruturado:

## 1. Faturamento por Categoria
Identificamos qual segmento do catálogo de cosméticos traz maior receita:

| Categoria  | Faturamento Total |
| Perfumaria |     R$189,00      |
| Skincare   |     R$175,00      |
| Maquiagem  |     R$130,80      |

<img width="751" height="452" alt="image" src="https://github.com/user-attachments/assets/e2caba2e-b33a-4a84-beb8-e88675c7f139" />

⭐ Insight: Apesar da Perfumaria ter o maior faturamento, o volume de vendas em **Maquiagem** é constante, sugerindo uma estratégia de cross-sell (vender um batom junto com o perfume).


## 2. Ticket Médio por Estado (UF)
Análise de quanto, em média, cada cliente gasta por região:

| Estado (UF)  | Ticket Médio (R$) |
|     RJ       |     R$110,00      |
|     SP       |     R$105,45      |
|     PR       |     R$85,80       |

<img width="751" height="452" alt="image" src="https://github.com/user-attachments/assets/a7ff8dee-827a-4b06-9110-939c2189eef9" />


---
*Projeto desenvolvido para portfólio de Ciência de Dados. Este cenário foi inspirado em desafios reais de organização de dados que presenciei em minha experiência anterior.*
