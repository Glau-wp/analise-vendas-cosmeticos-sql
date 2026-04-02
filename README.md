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

<p align="center">
  <img src="https://github.com/user-attachments/assets/e2caba2e-b33a-4a84-beb8-e88675c7f139" width="500" alt="Gráfico de Faturamento por Categoria">
  <br>
  <em>Gráfico 1: Visão geral de faturamento por categoria de produto.</em>
</p>

⭐ Insight: Apesar da Perfumaria ter o maior faturamento, o volume de vendas em **Maquiagem** é constante, sugerindo uma estratégia de cross-sell (vender um batom junto com o perfume).

## 2. 📍 Desempenho Regional (Ticket Médio)
Enquanto a Perfumaria lidera o faturamento total, a análise por estado revela onde os clientes gastam mais por pedido:

| Estado (UF) | Ticket Médio (R$) | Perfil de Consumo |
| :--- | :--- | :--- |
| Rio de Janeiro | R$ 110,00 | Alto valor agregado | 
| São Paulo | R$ 105,45 | Maior volume de pedidos | 
| Paraná | R$ 85,80 | Compras de reposição|

⭐ Insight: O Ticket Médio elevado no RJ sugere uma oportunidade para oferecer frete grátis em compras acima de R$ 120,00 para incentivar o aumento da cesta.

##3. 🏆 Top 3 Clientes (Fidelidade)

| Cliente | Total Gasto (R$) | N° de Compras |
| :--- | :--- | :--- |
| Ana Silva	| R$ 210,90	| 2 |
| Carla Dias |	R$ 189,00	| 1 |
| Bruno Souza |	R$ 110,00	| 1 | 


---
*Projeto desenvolvido para portfólio de Ciência de Dados. Este cenário foi inspirado em desafios reais de organização de dados que presenciei em minha experiência anterior.*
