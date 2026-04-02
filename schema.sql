CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY, --Em todas as tabelas utilizei o Primary KEY, garantindo que não exista dois clientes com o mesmo ID ou vendas duplicadas, garantindo a integridade dos dados.
    nome_cliente VARCHAR(100), -- Usei VARCHAR para nomes (que variam de tamanho) e CHAR(2) para o estado (UF), pois estados sempre têm exatamente 2 letras. Isso economiza memória no banco.
    estado_uf CHAR(2),
    data_registro DATE --Garante que o sistema trate datas como tempo, permitindo que eu faça análises sazonais (ex: vendas por mês).
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100), 
    categoria VARCHAR(50),
    preco_base DECIMAL(10,2) -- Usei para preços e valores. Diferente do tipo Float, o Decimal evita erros de arredondamento em cálculos financeiros (muito importante em varejo!).
 );

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    id_cliente INT,
    data_venda DATE,
    valor_total_venda DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) --FOREIGN KEY liga uma tabela a outra. O banco precisa relacionar quem comprou "id_cliente" e o que comprou "id_produto". 
);

CREATE TABLE itens_venda (
    id_venda INT,
    id_produto INT,
    quantidade INT,
    preco_aplicado DECIMAL(10,2),
    PRIMARY KEY (id_venda, id_produto), -- Uma venda pode ter vários produtos e um produto pode estar em várias vendas. A PRIMARY KEY aqui garante que o mesmo produto seja inserido duas vezes na mesma nota fiscal de forma errada.
    FOREIGN KEY (id_venda) REFERENCES vendas(id_venda), --FOREIGN KEY liga uma tabela a outra. O banco precisa relacionar quem comprou "id_cliente" e o que comprou "id_produto". 
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto) 
);
