-- ======================================================
-- ANALISES DE NEGÓCIO - SETOR DE COSMÉTICOS
-- Objetivo: Transformar dados em insights estratégicos
-- ======================================================

-- 1. FATURAMENTO TOTAL POR CATEGORIA
-- Objetivo: Identificar quais linhas de produtos são mais rentáveis.
SELECT 
    p.categoria, 
    SUM(iv.quantidade * iv.preco_aplicado) AS faturamento_total
FROM itens_venda iv
JOIN produtos p ON iv.id_produto = p.id_produto
GROUP BY p.categoria
ORDER BY faturamento_total DESC;


-- 2. TICKET MÉDIO POR ESTADO (UF)
-- Objetivo: Entender o perfil de consumo regional para logística e marketing.
SELECT 
    c.estado_uf, 
    ROUND(AVG(v.valor_total_venda), 2) AS ticket_medio
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.estado_uf
ORDER BY ticket_medio DESC;


-- 3. RANKING DE CLIENTES (FIDELIDADE)
-- Objetivo: Identificar os "Top Spenders" para programas de recompensas.
SELECT 
    c.nome_cliente, 
    COUNT(v.id_venda) AS total_compras,
    SUM(v.valor_total_venda) AS valor_total_gasto
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nome_cliente
ORDER BY valor_total_gasto DESC
LIMIT 5;


-- 4. PRODUTOS MAIS VENDIDOS (VOLUME)
-- Objetivo: Gestão de estoque e popularidade de itens.
SELECT 
    p.nome_produto, 
    SUM(iv.quantidade) AS quantidade_vendida
FROM itens_Venda iv
JOIN produtos p ON iv.id_produto = p.id_produto
GROUP BY p.nome_produto
ORDER BY quantidade_vendida DESC;


-- 5. ANÁLISE DE SAZONALIDADE (VENDAS POR MÊS)
-- Objetivo: Identificar picos de venda ao longo do tempo.
SELECT 
    STRFTIME('%m', data_venda) AS mes, -- Nota: Para SQLite use STRFTIME, para MySQL use MONTH()
    COUNT(id_venda) AS total_pedidos,
    SUM(valor_total_venda) AS faturamento_mensal
FROM vendas
GROUP BY mes
ORDER BY mes;

-- Identifica os produtos que mais trazem dinheiro para o caixa
SELECT 
    p.nome_produto,
    p.categoria,
    SUM(iv.quantidade * iv.preco_aplicado) AS receita_total,
    ROUND((SUM(iv.quantidade * iv.preco_aplicado) / (SELECT SUM(valor_total_venda) FROM Vendas) * 100), 2) AS percentual_do_total
FROM Itens_Venda iv
JOIN Produtos p ON iv.id_produto = p.id_produto
GROUP BY p.nome_produto, p.categoria
ORDER BY receita_total DESC;

-- Clientes que retornaram à loja (compras > 1)
SELECT 
    c.nome_cliente,
    COUNT(v.id_venda) AS frequencia_de_compra,
    MAX(v.data_venda) AS data_ultima_compra
FROM Vendas v
JOIN Clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente
HAVING frequencia_de_compra > 1
ORDER BY frequencia_de_compra DESC;

-- Média de itens por pedido (profundidade de carrinho)
SELECT 
    v.id_venda,
    c.nome_cliente,
    COUNT(iv.id_produto) AS total_itens_no_pedido
FROM Vendas v
JOIN Itens_Venda iv ON v.id_venda = iv.id_venda
JOIN Clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_venda
ORDER BY total_itens_no_pedido DESC;

-- ANALISE DE RETENÇÃO: Média de dias entre a primeira e a última compra
-- Objetivo: Entender o ciclo de vida do cliente (Loyalty)
SELECT 
    c.nome_cliente,
    MIN(v.data_venda) AS primeira_compra,
    MAX(v.data_venda) AS ultima_compra,
    CAST(JULIANDAY(MAX(v.data_venda)) - JULIANDAY(MIN(v.data_venda)) AS INT) AS dias_de_vida_do_cliente
FROM Vendas v
JOIN Clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente
HAVING dias_de_vida_do_cliente > 0 -- Apenas clientes que compraram em datas diferentes
ORDER BY dias_de_vida_do_cliente DESC;
