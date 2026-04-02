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

## 🚀 Novas Descobertas Analíticas

Nesta fase do projeto, aprofundamos a nálise para extrair inteligência de negócio que impacta diretamente na tomada de decisão:

* **📍 Ticket Médio Regional:** *
O Estado do **Rio de Janeiro** possui o maior gasto por pedido (R$ 110,00). Isso sugere que campanhas de produtos de luxo/premium podem ter maior taxa de conversão nessa região.

* **📦 Eficiência de Estoque (Pareto):**
Cerca de **30% dos produtos** (Perfumaria) representam quase **70% do faturamento**. Isso permite à empresa focar o capital de giro nos itens de maior giro e reduzir custos com estoque parado de itens menos populares.

* **🔄 Taxa de Retorno e Fidelidade:**
Foi identificado que a cliente **Ana Silva** é a nossa consumidora mais fiel, com o maior tempo de permanência na marca. Isso abre espaço para estratégias de *Member Get Member* (indicação).

### 🧪 Desafio de Cientista de Dados: Análise Temporal

Fui além das métricas básicas e calculei o **Ciclo de Vida do Cliente**:

## Pergunta:  
- Qual a média de dias que um cliente fiel permanece comprando conosco?
  
## Resultado: 
- Clientes recorrentes possuem um ciclo médio de **25 dias** entre a primeira e a última compra registrada na base.

## 🎉Ação: 
- Com esse dado, o time de marketing pode programar notificações de "reposição de estoque" (ex: o batom está acabando!) exatamente no 24º dia.

---
*Projeto desenvolvido para portfólio de Ciência de Dados. Este cenário foi inspirado em desafios reais de organização de dados que presenciei em minha experiência anterior.*
