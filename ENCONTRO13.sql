USE DB_T2_CAROLINA_GONZAGA_COSTA; -- Define o banco de dados especificado como o banco ativo para todas as próximas consultas

-- TABELAS

-- Criando Tabela de Clientes
CREATE TABLE CONT_CUSTOMERS (
    CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
    FULL_NAME VARCHAR(100) NOT NULL,
    BIRTH_DATE DATE,
    COUNTRY VARCHAR(50)
);

-- Se quiser apagar tabela: DROP TABLE IF EXISTS CONT_CUSTOMERS;
-- Consultando tabela de Clientes
SELECT * FROM CONT_CUSTOMERS;


-- Criando Tabela de Produto
CREATE TABLE CONT_PRODUCT (
    PRODUCT_ID INT PRIMARY KEY DEFAULT 1,
    PRODUCT_NAME VARCHAR(50) NOT NULL DEFAULT 'RENDA FIXA',
    -- CONSTRAINT para garantir que ninguém mude o ID 1
    CONSTRAINT ONLY_ONE_PRODUCT CHECK (PRODUCT_ID = 1)
);

-- Para inserir o único produto permitido:
INSERT INTO CONT_PRODUCT (PRODUCT_ID) VALUES (1);
-- Consultando tabela de Produto
SELECT * FROM CONT_PRODUCT;



-- Criando Tabela de Investimentos
CREATE TABLE CONT_INVESTMENTS (
    INVESTMENT_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_ID INT NOT NULL,
    PRODUCT_ID INT NOT NULL DEFAULT 1,
    INVESTED_VALUE DECIMAL(15, 2),
    ENTRY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    /* As chaves estrangeiras */
    CONSTRAINT FK_CUSTOMER FOREIGN KEY (CUSTOMER_ID) 
        REFERENCES CONT_CUSTOMERS(CUSTOMER_ID),
        
    CONSTRAINT FK_PRODUCT FOREIGN KEY (PRODUCT_ID) 
        REFERENCES CONT_PRODUCT(PRODUCT_ID)
);
-- Consultando tabela de Investimentos
SELECT * FROM CONT_INVESTMENTS;


-- Criando Tabela de Gastos Fixos
CREATE TABLE CONT_FIXED_COSTS (
    ID_COST INT PRIMARY KEY AUTO_INCREMENT,
    DESCRIPTION VARCHAR(100) NOT NULL,
    AMOUNT DECIMAL(10, 2) NOT NULL
);

-- Inserção dos dados fixos de gastos
INSERT INTO CONT_FIXED_COSTS (DESCRIPTION, AMOUNT) VALUES 
('RENT', 2000.00),
('DOMAIN', 30.00),
('SERVER', 30.00),
('GENERAL EXPENSES', 1000.00);

-- DROP TABLE IF EXISTS CONT_FIXED_COSTS;
-- Consultando tabela de Gastos Fixos
SELECT * FROM CONT_FIXED_COSTS;

-- Inserção dos dados da tabela de Clientes
INSERT INTO CONT_CUSTOMERS (FULL_NAME, BIRTH_DATE, COUNTRY) VALUES
('LIAM SMITH', '1985-05-12', 'UNITED STATES'),
('NOAH GARCIA', '1992-08-24', 'BRAZIL'),
('OLIVER MARTINS', '1978-03-15', 'PORTUGAL'),
('ELIJAH ROSSI', '1988-11-30', 'ITALY'),
('JAMES SCHMIDT', '1995-01-05', 'GERMANY'),
('WILLIAM SILVA', '1980-07-22', 'BRAZIL'),
('BENJAMIN PEREIRA', '1983-04-10', 'PORTUGAL'),
('LUCAS JONES', '1990-12-14', 'UNITED STATES'),
('HENRY MULLER', '1975-09-08', 'GERMANY'),
('ALEXANDER FERRARI', '1982-06-19', 'ITALY'),
('MIA OLIVEIRA', '1998-02-27', 'BRAZIL'),
('ETHAN BROWN', '1987-10-11', 'UNITED STATES'),
('DANIEL COSTA', '1991-03-22', 'PORTUGAL'),
('MATTHEW WEBER', '1984-05-30', 'GERMANY'),
('SAMUEL RICCI', '1979-08-14', 'ITALY'),
('SEBASTIAN SANTOS', '1993-11-02', 'BRAZIL'),
('JACKSON MILLER', '1986-01-25', 'UNITED STATES'),
('LEVI ALMEIDA', '1989-04-07', 'PORTUGAL'),
('DAVID FISCHER', '1981-07-16', 'GERMANY'),
('JOSEPH ROMANO', '1977-10-29', 'ITALY'),
('CARTER SOUZA', '1996-03-12', 'BRAZIL'),
('OWEN WILSON', '1988-06-25', 'UNITED STATES'),
('WYATT FERREIRA', '1982-09-08', 'PORTUGAL'),
('JAYDEN MEYER', '1994-12-21', 'GERMANY'),
('GABRIEL MARINO', '1985-02-14', 'ITALY'),
('JULIAN LIMA', '1990-05-27', 'BRAZIL'),
('MATEO TAYLOR', '1983-08-10', 'UNITED STATES'),
('ANTHONY GOMES', '1976-11-23', 'PORTUGAL'),
('ISAAC WAGNER', '1989-01-05', 'GERMANY'),
('DYLAN BRUNO', '1992-04-18', 'ITALY'),
('LEO RIBEIRO', '1987-07-01', 'BRAZIL'),
('JOSIAH ANDERSON', '1984-10-14', 'UNITED STATES'),
('CHARLES ROCHA', '1981-02-27', 'PORTUGAL'),
('THOMAS SCHULZ', '1995-06-12', 'GERMANY'),
('CALEB MORETTI', '1986-09-25', 'ITALY'),
('RYAN BARBOSA', '1991-12-08', 'BRAZIL'),
('NATHAN WHITE', '1978-03-21', 'UNITED STATES'),
('ADRIAN CARVALHO', '1983-06-03', 'PORTUGAL'),
('CHRISTIAN HOFFMANN', '1980-09-16', 'GERMANY'),
('MAVERICK COCO', '1993-12-29', 'ITALY'),
('COLTON MACHADO', '1988-04-11', 'BRAZIL'),
('ELIAS HARRIS', '1982-07-24', 'UNITED STATES'),
('AARON CARDOSO', '1989-10-07', 'PORTUGAL'),
('AXEL KOCH', '1977-01-20', 'GERMANY'),
('SANTIAGO GRECO', '1996-04-02', 'ITALY'),
('CONNOR TEIXEIRA', '1984-07-15', 'BRAZIL'),
('NOLAN MARTIN', '1991-10-28', 'UNITED STATES'),
('LUCA PINTO', '1985-02-10', 'PORTUGAL'),
('HUNTER BAUER', '1979-05-23', 'GERMANY'),
('IAN DE LUCA', '1992-08-05', 'ITALY'),
('ADAM CAVALCANTE', '1986-11-18', 'BRAZIL'),
('NICO MOREIRA', '1983-02-01', 'PORTUGAL'),
('DOMINIC WALKER', '1980-05-14', 'UNITED STATES'),
('ERIK RICHTER', '1995-08-27', 'GERMANY'),
('MARCO GALLO', '1988-12-10', 'ITALY'),
('JONAS MENDES', '1982-03-25', 'BRAZIL'),
('THEO YOUNG', '1989-06-08', 'UNITED STATES'),
('HUGO FREITAS', '1977-09-21', 'PORTUGAL'),
('KEVIN ZIMMERMANN', '1994-01-04', 'GERMANY'),
('SILAS BLACK', '1981-11-11', 'UNITED STATES'),
('BEATRIZ NUNES', '1993-05-19', 'BRAZIL'),
('TIAGO LOPES', '1986-02-28', 'PORTUGAL'),
('GIOVANNA RIZZO', '1990-07-07', 'ITALY'),
('HANS WOLF', '1982-12-12', 'GERMANY'),
('RODRIGO ALVES', '1995-03-14', 'BRAZIL'),
('MARTA CABRAL', '1984-06-21', 'PORTUGAL'),
('JOSHUA DAVIS', '1979-09-30', 'UNITED STATES'),
('ELENA BIANCHI', '1988-01-15', 'ITALY'),
('STEFAN KRUGER', '1991-04-22', 'GERMANY'),
('CAMILA DUARTE', '1997-10-10', 'BRAZIL'),
('RICARDO NEVES', '1983-08-05', 'PORTUGAL'),
('RYAN CLARK', '1980-02-20', 'UNITED STATES'),
('SOFIA CONTE', '1994-11-18', 'ITALY'),
('LUKAS NEUMANN', '1985-05-05', 'GERMANY'),
('FABIO VIANA', '1992-09-29', 'BRAZIL'),
('CATARINA REIS', '1987-12-03', 'PORTUGAL'),
('TYLER LEWIS', '1976-03-11', 'UNITED STATES'),
('VALERIA RUSSO', '1981-06-27', 'ITALY'),
('JURGEN BRAUN', '1989-01-24', 'GERMANY'),
('GUSTAVO BRAGA', '1996-07-13', 'BRAZIL'),
('ANA RITA', '1984-04-04', 'PORTUGAL'),
('BRANDON HILL', '1980-12-25', 'UNITED STATES'),
('PAOLA ROMANO', '1993-02-09', 'ITALY'),
('OTTO SCHNEIDER', '1978-08-16', 'GERMANY'),
('MURILO REZENDE', '1991-05-30', 'BRAZIL'),
('HELENA MAGALHAES', '1986-11-21', 'PORTUGAL'),
('JUSTIN BAKER', '1982-10-02', 'UNITED STATES'),
('CHIARA LUCIANO', '1995-01-19', 'ITALY'),
('KARL HARTMANN', '1983-09-08', 'GERMANY'),
('DOUGLAS LIMA', '1990-03-12', 'BRAZIL'),
('PATRICIA GOMES', '1987-07-25', 'PORTUGAL'),
('SEAN ADAMS', '1975-12-01', 'UNITED STATES'),
('ALESSANDRA COSTA', '1989-04-14', 'ITALY'),
('HELMUT LANG', '1981-10-29', 'GERMANY'),
('IGOR BATISTA', '1994-06-17', 'BRAZIL'),
('INÊS SOUSA', '1982-01-30', 'PORTUGAL'),
('LUKE EVANS', '1990-08-11', 'UNITED STATES'),
('ELISA FONTANA', '1986-05-26', 'ITALY'),
('FRANZ WAGNER', '1977-03-03', 'GERMANY'),
('CAIO FERRAZ', '1993-11-15', 'BRAZIL');

-- Consultando tabela de Clientes
SELECT * FROM CONT_CUSTOMERS;

-- Inserindo dados na tabela de Investimentos
INSERT INTO CONT_INVESTMENTS (CUSTOMER_ID, PRODUCT_ID, INVESTED_VALUE, ENTRY_DATE) VALUES
(1, 1, 15000.00, '2024-01-10'),
(2, 1, 8500.00, '2024-01-12'),
(3, 1, 22000.00, '2024-01-15'),
(4, 1, 12000.00, '2024-01-18'),
(5, 1, 35000.00, '2024-01-20'),
(6, 1, 5000.00, '2024-01-22'),
(7, 1, 18500.00, '2024-01-25'),
(8, 1, 45000.00, '2024-01-28'),
(9, 1, 12500.00, '2024-02-01'),
(10, 1, 9000.00, '2024-02-03'),
(11, 1, 11000.00, '2024-02-05'),
(12, 1, 27500.00, '2024-02-07'),
(13, 1, 14000.00, '2024-02-10'),
(14, 1, 8000.00, '2024-02-12'),
(15, 1, 31000.00, '2024-02-15'),
(16, 1, 6500.00, '2024-02-18'),
(17, 1, 55000.00, '2024-02-20'),
(18, 1, 19000.00, '2024-02-22'),
(19, 1, 21000.00, '2024-02-25'),
(20, 1, 13500.00, '2024-02-27'),
(21, 1, 4200.00, '2024-03-01'),
(22, 1, 33000.00, '2024-03-03'),
(23, 1, 15500.00, '2024-03-05'),
(24, 1, 26000.00, '2024-03-07'),
(25, 1, 17500.00, '2024-03-10'),
(26, 1, 9800.00, '2024-03-12'),
(27, 1, 41000.00, '2024-03-15'),
(28, 1, 28000.00, '2024-03-18'),
(29, 1, 12000.00, '2024-03-20'),
(30, 1, 7500.00, '2024-03-22'),
(31, 1, 52000.00, '2024-03-25'),
(32, 1, 18000.00, '2024-03-28'),
(33, 1, 24500.00, '2024-03-30'),
(34, 1, 39000.00, '2024-03-01'),
(35, 1, 11500.00, '2024-03-02'),
(36, 1, 3000.00, '2024-03-04'),
(37, 1, 62000.00, '2024-03-06'),
(38, 1, 13000.00, '2024-03-08'),
(39, 1, 47000.00, '2024-03-10'),
(40, 1, 5500.00, '2024-03-12'),
(41, 1, 29000.00, '2024-03-14'),
(42, 1, 20500.00, '2024-03-16'),
(43, 1, 16500.00, '2024-03-18'),
(44, 1, 53000.00, '2024-03-20'),
(45, 1, 9500.00, '2024-03-22'),
(46, 1, 32000.00, '2024-03-24'),
(47, 1, 14500.00, '2024-03-26'),
(48, 1, 40000.00, '2024-03-28'),
(49, 1, 25000.00, '2024-03-30'),
(50, 1, 18500.00, '2024-03-31'),
(51, 1, 7800.00, '2024-01-05'),
(52, 1, 12500.00, '2024-01-07'),
(53, 1, 36000.00, '2024-01-09'),
(54, 1, 29500.00, '2024-01-11'),
(55, 1, 15000.00, '2024-01-13'),
(56, 1, 23000.00, '2024-01-15'),
(57, 1, 48000.00, '2024-01-17'),
(58, 1, 10500.00, '2024-01-19'),
(59, 1, 51000.00, '2024-01-21'),
(60, 1, 19200.00, '2024-04-01'),
(61, 1, 14300.00, '2024-04-02'),
(62, 1, 31000.00, '2024-04-03'),
(63, 1, 21500.00, '2024-04-04'),
(64, 1, 44000.00, '2024-04-05'),
(65, 1, 9200.00, '2024-04-06'),
(66, 1, 17800.00, '2024-04-07'),
(67, 1, 56000.00, '2024-04-08'),
(68, 1, 10200.00, '2024-04-09'),
(69, 1, 33500.00, '2024-04-10'),
(70, 1, 12100.00, '2024-04-11'),
(71, 1, 25600.00, '2024-04-12'),
(72, 1, 42300.00, '2024-04-13'),
(73, 1, 15900.00, '2024-04-14'),
(74, 1, 28700.00, '2024-04-15'),
(75, 1, 6700.00, '2024-04-16'),
(76, 1, 38400.00, '2024-04-17'),
(77, 1, 61200.00, '2024-04-18'),
(78, 1, 11800.00, '2024-04-19'),
(79, 1, 49200.00, '2024-04-20'),
(80, 1, 8400.00, '2024-04-21'),
(81, 1, 22300.00, '2024-04-22'),
(82, 1, 35100.00, '2024-04-23'),
(83, 1, 14600.00, '2024-04-24'),
(84, 1, 55200.00, '2024-04-25'),
(85, 1, 13200.00, '2024-04-26'),
(86, 1, 29100.00, '2024-04-27'),
(87, 1, 47800.00, '2024-04-28'),
(88, 1, 9300.00, '2024-04-29'),
(89, 1, 41500.00, '2024-04-30'),
(90, 1, 18900.00, '2024-05-01'),
(91, 1, 14700.00, '2024-05-02'),
(92, 1, 68000.00, '2024-05-03'),
(93, 1, 20400.00, '2024-05-04'),
(94, 1, 36700.00, '2024-05-05'),
(95, 1, 11400.00, '2024-05-06'),
(96, 1, 32600.00, '2024-05-07'),
(97, 1, 51200.00, '2024-05-08'),
(98, 1, 13800.00, '2024-05-09'),
(99, 1, 45900.00, '2024-05-10'),
(100, 1, 7900.00, '2024-05-11');

-- Consultando tabela de Investimentos
SELECT * FROM CONT_INVESTMENTS;


-- PROCEDURES

-- Criando Procedure Cadastrar Cliente
-- As tabelas de Clientes e Investimentos são sensibilidas nessa execução

-- Altera o delimitador padrão para // para que o bloco de código seja enviado ao servidor de uma só vez
DELIMITER // 
CREATE PROCEDURE INSERT_CUSTOMER(
    IN p_FULL_NAME VARCHAR(100),      -- Parâmetro de entrada: Nome completo do cliente
    IN p_BIRTH_DATE DATE,             -- Parâmetro de entrada: Data de nascimento do cliente
    IN p_COUNTRY VARCHAR(50),         -- Parâmetro de entrada: País do cliente
    IN p_INVESTED_VALUE DECIMAL(15, 2) -- Parâmetro de entrada: Valor inicial a ser investido
)
BEGIN -- Inicia o bloco de execução da procedure
    
    -- Declara uma variável interna para guardar o ID que o banco vai gerar para o novo cliente
    DECLARE v_CUSTOMER_ID INT;

    -- Inicia uma transação: garante que o cliente e o investimento sejam gravados juntos (ou nada será gravado se houver erro)
    START TRANSACTION;

    -- 1. Insere as informações básicas do cliente na tabela de clientes
    INSERT INTO CONT_CUSTOMERS (FULL_NAME, BIRTH_DATE, COUNTRY)
    VALUES (p_FULL_NAME, p_BIRTH_DATE, p_COUNTRY);

    -- 2. Captura o ID automático (AUTO_INCREMENT) que acabou de ser gerado pelo INSERT anterior
    SET v_CUSTOMER_ID = LAST_INSERT_ID();

    -- 3. Registra o investimento na tabela de investimentos, vinculando-o ao ID do cliente capturado
    -- O PRODUCT_ID 1 é usado como padrão e NOW() registra a data e hora exatas do cadastro
    INSERT INTO CONT_INVESTMENTS (CUSTOMER_ID, PRODUCT_ID, INVESTED_VALUE, ENTRY_DATE)
    VALUES (v_CUSTOMER_ID, 1, p_INVESTED_VALUE, NOW());

    -- Confirma e finaliza a transação, salvando permanentemente as alterações no banco de dados
    COMMIT;
    
        -- EXIBE NA TELA: Retorna uma mensagem de sucesso e o ID gerado para o usuário
    SELECT 'CLIENTE CADASTRADO COM SUCESSO!' AS MENSAGEM, v_CUSTOMER_ID AS NOVO_ID;

-- Finaliza o corpo da procedure
END // 

-- Restaura o delimitador padrão do sistema para ponto e vírgula (;)
DELIMITER ; 

-- Validar tabela Cliente Antes de Execução da Procedure Cadastrar Cliente
SELECT * FROM CONT_CUSTOMERS;
-- Validar tabela Investimentos Antes Execução da Procedure Cadastrar Cliente
SELECT * FROM CONT_INVESTMENTS;


-- Utilizar a Procedure Cadastrar Cliente
CALL INSERT_CUSTOMER('John Doe', '1990-05-15', 'USA', 12345.00);

-- Validar tabela Cliente Após Execução da Procedure Cadastrar Cliente
SELECT * FROM CONT_CUSTOMERS;
-- Validar tabela Investimentos Após Execução da Procedure Cadastrar Cliente
SELECT * FROM CONT_INVESTMENTS;


-- Procedure Excluir Cliente
-- As tabelas de Clientes e Investimentos são sensibilidas nessa execução
-- Altera o delimitador para // para que o banco de dados ignore os pontos e vírgulas internos
DELIMITER // 

CREATE PROCEDURE DELETE_CUSTOMER_BY_ID(
    IN p_CUSTOMER_ID INT -- Define um parâmetro de entrada para receber o ID do cliente que será excluído
)
BEGIN -- Inicia o bloco de execução da procedure
    
    -- 1. Deleta primeiro os registros na tabela de investimentos vinculados a este cliente
    -- Isso é necessário para evitar erros de restrição de chave estrangeira (Foreign Key)
    DELETE FROM CONT_INVESTMENTS 
    WHERE CUSTOMER_ID = p_CUSTOMER_ID;

    -- 2. Agora que os vínculos foram removidos, deleta o registro do cliente na tabela principal
    DELETE FROM CONT_CUSTOMERS 
    WHERE CUSTOMER_ID = p_CUSTOMER_ID;

-- Finaliza o corpo da procedure com o delimitador definido no início
END // 

-- Restaura o delimitador padrão do sistema para ponto e vírgula (;)
DELIMITER ; 

-- Validar tabela Cliente Antes da execução da Procedure Excluir Cliente
SELECT * FROM CONT_CUSTOMERS;
-- Validar tabela Investimentos Antes da Execução da Procedure Excluir Cliente
SELECT * FROM CONT_INVESTMENTS;

-- Utilizar a Procedure Excluir Cliente
CALL DELETE_CUSTOMER_BY_ID(105);

-- Validar tabela Cliente Após Execução da Procedure Excluir Cliente
SELECT * FROM CONT_CUSTOMERS;
-- Validar tabela Investimentos Após Execução da Procedure Excluir Cliente
SELECT * FROM CONT_INVESTMENTS;

-- comandos para deletar as Procedures
DROP PROCEDURE IF EXISTS INSERT_CUSTOMER;
DROP PROCEDURE IF EXISTS DELETE_CUSTOMER_BY_ID;


-- CONSULTAS OBRIGATÓRIAS

-- (1) Países atendidos (SELECT)
SELECT DISTINCT COUNTRY 
FROM CONT_CUSTOMERS;

-- (1) Criando a Procedure
 -- Altera o delimitador padrão (;) para //, permitindo que o bloco da procedure seja lido como um todo

DELIMITER //
CREATE PROCEDURE LIST_REGISTERED_COUNTRIES() -- Cria a procedure chamada LIST_REGISTERED_COUNTRIES
BEGIN -- Inicia o bloco de comandos da procedure
    SELECT DISTINCT COUNTRY -- Seleciona a coluna de países, removendo duplicatas para não repetir nomes
    FROM CONT_CUSTOMERS -- Define a tabela de clientes como origem dos dados
    ORDER BY COUNTRY ASC; -- Ordena a lista de países em ordem alfabética (A-Z)
END // -- Finaliza o bloco de comandos usando o novo delimitador
-- Redefine o delimitador padrão de volta para o ponto e vírgula (;)
DELIMITER ; 

-- (1) Utilizando a Procedure
CALL LIST_REGISTERED_COUNTRIES();



-- (2) País que concentra o maior volume total investido. (SELECT)
SELECT DISTINCT -- Remove duplicatas para listar cada país apenas uma vez
    C.COUNTRY AS PAIS, -- Seleciona a coluna de país da tabela de clientes
    (SELECT SUM(I.INVESTED_VALUE) -- Inicia uma subconsulta para somar os valores investidos
     FROM CONT_INVESTMENTS I -- Define a tabela de investimentos como origem
     WHERE I.CUSTOMER_ID IN ( -- Filtra investimentos cujos clientes pertençam ao país atual
         SELECT CUSTOMER_ID 
         FROM CONT_CUSTOMERS 
         WHERE COUNTRY = C.COUNTRY -- Faz a correlação entre o país da subconsulta e o da consulta principal
     )) AS TOTAL_ACUMULADO -- Nomeia o resultado do cálculo da soma
FROM CONT_CUSTOMERS C -- Define a tabela de clientes (alias C) como a fonte principal
ORDER BY TOTAL_ACUMULADO DESC; -- Ordena os resultados do maior valor acumulado para o menor


-- (2) Criando a Procedure
DELIMITER //

CREATE PROCEDURE RANKING_OF_INVESTMENTS_BY_COUNTRY() -- Cria a procedure chamada RANKING_OF_INVESTMENTS_BY_COUNTRY
BEGIN -- Inicia o bloco de comandos da procedure
    SELECT DISTINCT -- Seleciona valores únicos para evitar a repetição de países no resultado
        C.COUNTRY AS PAIS, -- Seleciona a coluna de país da tabela de clientes e a apelida de 'PAIS'
        (SELECT SUM(I.INVESTED_VALUE) -- Inicia uma subconsulta para somar o valor total de investimentos
         FROM CONT_INVESTMENTS I -- Define a tabela de investimentos (apelidada de I) como origem
         WHERE I.CUSTOMER_ID IN ( -- Filtra investimentos vinculados aos IDs dos clientes que:
             SELECT CUSTOMER_ID -- Buscam o ID do cliente
             FROM CONT_CUSTOMERS -- Na tabela de clientes
             WHERE COUNTRY = C.COUNTRY -- Onde o país seja igual ao país da linha que está sendo processada no SELECT principal
         )) AS TOTAL_ACUMULADO -- Define o nome da coluna resultante da soma como 'TOTAL_ACUMULADO'
    FROM CONT_CUSTOMERS C -- Define a tabela de clientes (apelidada de C) como a fonte principal da consulta
    WHERE C.COUNTRY IS NOT NULL -- Filtra para ignorar registros onde o país não esteja preenchido
    ORDER BY TOTAL_ACUMULADO DESC; -- Ordena o ranking do maior valor investido para o menor
     -- Finaliza o bloco de comandos da procedure
END //
-- Redefine o delimitador padrão do sistema para ponto e vírgula (;)
DELIMITER ; 

-- (2) Utilizando a procedure
CALL RANKING_OF_INVESTMENTS_BY_COUNTRY();

 
-- (3) No final de cada mês, verificar quanto entrou de investimento naquele mês, quanto foi gasto
-- com custos fixos e qual foi o lucro líquido
SELECT 
    DATE_FORMAT(ENTRY_DATE, '%Y-%m') AS MES, -- Formata a data de entrada para o padrão 'Ano-Mês' e nomeia como MES
    SUM(INVESTED_VALUE) AS TOTAL_INVESTIDO, -- Soma todos os valores investidos no período e nomeia como TOTAL_INVESTIDO
    (SELECT SUM(AMOUNT) FROM FIXED_COSTS) AS TOTAL_CUSTO_FIXO, -- Subconsulta que soma todos os custos da tabela de custos fixos
    SUM(INVESTED_VALUE) - (SELECT SUM(AMOUNT) FROM FIXED_COSTS) AS LUCRO_LIQUIDO -- Subtrai o custo total do investimento total para calcular o lucro
FROM 
    CONT_INVESTMENTS -- Define a tabela de investimentos como a origem principal dos dados
GROUP BY 
    MES -- Agrupa os resultados por mês para que os cálculos de soma sejam feitos mensalmente
ORDER BY 
    MES; -- Ordena o relatório final cronologicamente pelo mês


-- (3) Criando Procedure
-- Altera o delimitador para // para que o banco ignore o ponto e vírgula interno durante a criação

DELIMITER // 
CREATE PROCEDURE MONTHLY_FINANCIAL_REPORT() -- Cria o procedimento chamado MONTHLY_FINANCIAL_REPORT
BEGIN -- Inicia o bloco de instruções da procedure
    SELECT 
        DATE_FORMAT(ENTRY_DATE, '%Y-%m') AS MES, -- Formata a data (Ex: 2023-10) para agrupar por mês e ano
        SUM(INVESTED_VALUE) AS TOTAL_INVESTIDO, -- Soma todos os investimentos realizados dentro de cada mês
        (SELECT SUM(AMOUNT) FROM FIXED_COSTS) AS TOTAL_CUSTO_FIXO, -- Busca a soma total de todos os custos fixos cadastrados
        SUM(INVESTED_VALUE) - (SELECT SUM(AMOUNT) FROM FIXED_COSTS) AS LUCRO_LIQUIDO -- Calcula a diferença entre o investido e o custo total
    FROM 
        CONT_INVESTMENTS -- Define a tabela de investimentos como fonte dos dados principais
    GROUP BY 
        MES -- Agrupa os registros que possuem o mesmo mês e ano
    ORDER BY 
        MES; -- Organiza o resultado final em ordem cronológica
         -- Finaliza o bloco de comandos da procedure
END //
-- Restaura o delimitador padrão do sistema para ponto e vírgula (;)
DELIMITER ; 

-- (3) Utilizando Procedure
CALL MONTHLY_FINANCIAL_REPORT();


-- (4) Consulta quanto foi ganho desde o inicio do mês até o dia da consulta
SELECT 
    -- Se a soma for nula (sem registros), o IFNULL retorna 0 em vez de vazio
    IFNULL(SUM(INVESTED_VALUE), 0) AS TOTAL_GANHO 
FROM 
    CONT_INVESTMENTS -- Define a tabela de investimentos como origem dos dados
WHERE 
    -- Filtra registros a partir do primeiro segundo do dia 01/03/2024
    ENTRY_DATE >= '2024-03-01 00:00:00' 
    -- Filtra registros até o último segundo do dia 31/03/2024
    AND ENTRY_DATE <= '2024-03-31 23:59:59';

-- (4) Criando a Procedure
-- Altera o delimitador para // para permitir que o bloco da procedure seja criado sem interrupções
DELIMITER // 
CREATE PROCEDURE MONTHLY_INCOME_UP_TO_THE_DATE_OF_THE_CONSULTATION(
    IN p_data_consulta DATE -- Define um parâmetro de entrada do tipo DATA para a consulta
)
BEGIN -- Inicia o corpo do procedimento
    SELECT 
        SUM(INVESTED_VALUE) AS TOTAL_GANHO_ATE_DATA -- Soma os valores investidos e nomeia a coluna de resultado
    FROM 
        CONT_INVESTMENTS -- Define a tabela de investimentos como origem
    WHERE 
        -- Filtra registros a partir do primeiro dia do mês relativo à data informada
        ENTRY_DATE >= DATE_FORMAT(p_data_consulta, '%Y-%m-01 00:00:00')
        -- Filtra registros até o último segundo da data específica informada no parâmetro
        AND ENTRY_DATE <= CONCAT(p_data_consulta, ' 23:59:59');
        -- Finaliza o bloco de comandos da procedure
END // 
-- Retorna o delimitador padrão do sistema para ponto e vírgula (;)
DELIMITER ; 

-- (4) Utilizando a Procedure
CALL MONTHLY_INCOME_UP_TO_THE_DATE_OF_THE_CONSULTATION('2024-03-31');


-- (5) Qual valor é ganho por dia em média, considerando o total investido no mês dividido pelos dias do mês.
SELECT 
    RESUMO.ANO, -- Seleciona o ano calculado na subconsulta
    RESUMO.MES, -- Seleciona o mês calculado na subconsulta
    RESUMO.TOTAL_MES, -- Seleciona a soma total do mês vinda da subconsulta
    -- Divide o total do mês pelo número de dias daquele mês específico:
    RESUMO.TOTAL_MES / DAY(LAST_DAY(STR_TO_DATE(CONCAT(RESUMO.ANO, '-', RESUMO.MES, '-01'), '%Y-%m-%d'))) AS MEDIA_DIARIA
FROM (
    -- Subconsulta (tabela temporária 'RESUMO') para pré-agrupar os valores
    SELECT 
        YEAR(ENTRY_DATE) AS ANO, -- Extrai o ano da data de entrada
        MONTH(ENTRY_DATE) AS MES, -- Extrai o mês da data de entrada
        SUM(INVESTED_VALUE) AS TOTAL_MES -- Soma os valores investidos por ano/mês
    FROM CONT_INVESTMENTS -- Tabela de origem dos investimentos
    GROUP BY YEAR(ENTRY_DATE), MONTH(ENTRY_DATE) -- Agrupa os dados por ano e depois por mês
) AS RESUMO; -- Apelida a subconsulta como 'RESUMO' para ser usada no SELECT principal

-- (5) Criando a Procedure
-- Altera o delimitador padrão para // para processar o bloco da procedure inteira
DELIMITER // 

CREATE PROCEDURE DAILY_INVESTMENT_AVERAGE(
    IN p_mes INT -- Declara um parâmetro de entrada para receber o número do mês (1 a 12)
)
BEGIN -- Inicia o corpo do procedimento
    SELECT 
        RESUMO.ANO, -- Seleciona o ano consolidado na subconsulta
        RESUMO.MES, -- Seleciona o mês consolidado na subconsulta
        RESUMO.TOTAL_MES, -- Seleciona o somatório total de investimentos do mês
        -- Calcula a média diária dividindo o total pelo último dia do mês e arredonda para 2 casas decimais
        ROUND(RESUMO.TOTAL_MES / DAY(LAST_DAY(STR_TO_DATE(CONCAT(RESUMO.ANO, '-', RESUMO.MES, '-01'), '%Y-%m-%d'))), 2) AS MEDIA_DIARIA
    FROM (
        -- Subconsulta para agrupar e somar os valores antes do cálculo da média
        SELECT 
            YEAR(ENTRY_DATE) AS ANO, -- Extrai o ano da data de investimento
            MONTH(ENTRY_DATE) AS MES, -- Extrai o mês da data de investimento
            SUM(INVESTED_VALUE) AS TOTAL_MES -- Soma o valor total investido no período
        FROM CONT_INVESTMENTS -- Tabela de origem
        WHERE MONTH(ENTRY_DATE) = p_mes -- Filtra os dados apenas para o mês passado como parâmetro
        GROUP BY YEAR(ENTRY_DATE), MONTH(ENTRY_DATE) -- Agrupa os resultados por ano e mês
    ) AS RESUMO -- Define o apelido 'RESUMO' para a tabela resultante da subconsulta
    ORDER BY RESUMO.ANO DESC; -- Ordena o resultado do ano mais recente para o mais antigo
    -- Finaliza a procedure
END // 
-- Restaura o delimitador padrão para ponto e vírgula (;)
DELIMITER ; 

-- Se quiser apagar a procedure: DROP PROCEDURE IF EXISTS  SP_MEDIA_INVESTIMENTO_DIARIO;

-- (5) Utilizando a Procedure
CALL DAILY_INVESTMENT_AVERAGE(3);



-- (6) Quanto cada cliente tem investido? Passar o id do cliente e retornar o nome, total investido e país.
SELECT 
    C.CUSTOMER_ID, -- Seleciona o ID único do cliente
    C.FULL_NAME,   -- Seleciona o nome completo do cliente
    C.COUNTRY,     -- Seleciona o país de origem do cliente
    -- Inicia uma subconsulta para somar os investimentos de cada cliente específico
    (SELECT SUM(I.INVESTED_VALUE) 
     FROM CONT_INVESTMENTS I 
     -- Filtra os investimentos onde o ID do cliente na tabela I é igual ao ID do cliente na linha atual da tabela C
     WHERE I.CUSTOMER_ID = C.CUSTOMER_ID) AS TOTAL_INVESTIDO 
FROM 
    CONT_CUSTOMERS C; -- Define a tabela de clientes (apelidada como C) como a base principal da consulta

-- (6) Criando a Procedure
-- Altera o delimitador para // para que o banco processe todo o bloco da procedure de uma vez
DELIMITER // 

CREATE PROCEDURE CLIENT_INVESTMENT_CONSULTATION(
    IN p_customer_id INT -- Define um parâmetro de entrada para receber o ID do cliente desejado
)
BEGIN -- Inicia o corpo do procedimento
    SELECT 
        C.CUSTOMER_ID, -- Seleciona o ID do cliente na tabela principal
        C.FULL_NAME,   -- Seleciona o nome completo do cliente
        C.COUNTRY,     -- Seleciona o país do cliente
        -- Subconsulta para somar investimentos; IFNULL garante que apareça 0.00 se o cliente não tiver aportes
        (SELECT IFNULL(SUM(I.INVESTED_VALUE), 0.00) 
         FROM CONT_INVESTMENTS I 
         -- Faz o vínculo entre a tabela de investimentos e o cliente específico da consulta
         WHERE I.CUSTOMER_ID = C.CUSTOMER_ID) AS TOTAL_INVESTIDO
    FROM 
        CONT_CUSTOMERS C -- Define a tabela de clientes (C) como origem principal
    WHERE 
        C.CUSTOMER_ID = p_customer_id; -- Filtra os dados apenas para o cliente informado no parâmetro
        -- Finaliza a criação da procedure
END // 
-- Restaura o delimitador padrão para ponto e vírgula (;)
DELIMITER ; 

-- (6) Utilizando a Procedure
CALL CLIENT_INVESTMENT_CONSULTATION(2);



-- Criar insight não mapeado
-- Criar campanhas ou promoções justamente nos dias em que o volume financeiro naturalmente cai, 
-- pois há períodos em que pessoas costumam a investir mais (como ex. dia 05 ou 20 do mês)

-- Altera o delimitador para // para que o bloco da procedure seja lido corretamente
DELIMITER // 

CREATE PROCEDURE DAILY_INVESTMENT_FLOW() -- Cria o procedimento chamado DAILY_INVESTMENT_FLOW
BEGIN -- Inicia o bloco de instruções da procedure
    SELECT 
        DAY(ENTRY_DATE) AS DIA_DO_MES, -- Extrai apenas o número do dia da data de entrada
        COUNT(INVESTMENT_ID) AS TOTAL_DE_APORTES, -- Conta quantas operações de investimento ocorreram
        SUM(INVESTED_VALUE) AS VALOR_TOTAL_ACUMULADO -- Soma o valor total investido para cada dia
    FROM 
        CONT_INVESTMENTS -- Define a tabela de investimentos como origem dos dados
    GROUP BY 
        DAY(ENTRY_DATE) -- Agrupa os resultados pelo número do dia (do dia 1 ao 31)
    ORDER BY 
        TOTAL_DE_APORTES ASC; -- Ordena os dias, começando pelos que tiveram menos investimentos
-- Finaliza o bloco de comandos da procedure
END // 
-- Restaura o delimitador padrão (ponto e vírgula)
DELIMITER ; 

CALL DAILY_INVESTMENT_FLOW(); -- Executa (chama) a procedure recém-criada para exibir o relatório
