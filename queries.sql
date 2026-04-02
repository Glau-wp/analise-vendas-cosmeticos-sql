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
