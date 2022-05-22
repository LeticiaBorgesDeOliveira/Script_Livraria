
--EXERCICIOS DE SELECT


/*1 – Trazer todos os dados.*/
SELECT * FROM LIVROS;

/*2 – Trazer o nome do livro e o nome da editora*/
SELECT LIVRO, EDITORA
FROM LIVROS;

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';

SELECT AUTOR, SEXO,LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/

SELECT LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';

SELECT AUTOR,  LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';


/*5 – Trazer os valores dos livros das editoras de São Paulo.*/

SELECT LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';

SELECT UF, LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE SEXO = 'M'
AND UF = 'SP'
OR UF = 'RJ';

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');
