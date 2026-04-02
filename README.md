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

---
*Projeto desenvolvido para portfólio de Ciência de Dados. Este cenário foi inspirado em desafios reais de organização de dados que presenciei em minha experiência anterior.*
