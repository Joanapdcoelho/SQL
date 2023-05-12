# SQL tipos de dados  
Em SQL, os tipos de dados são usados para definir o tipo de valor que uma coluna de uma tabela pode armazenar. Os tipos de dados mais comuns em SQL são:

# 1. Boleanos
Booleanos: Um tipo de dados que armazena valores lógicos, verdadeiro ou falso (TRUE ou FALSE).

Os tipos de dados booleanos em SQL armazenam valores lógicos verdadeiros ou falsos (TRUE ou FALSE). Geralmente, eles são usados em condições de seleção ou como valores de retorno em funções e expressões.

## Exemplos em SQL:
BIT, BOOLEAN

BIT é um tipo de dados que pode armazenar valores binários de 0 e 1 ou NULL, enquanto BOOLEAN é um tipo de dados que pode armazenar valores TRUE, FALSE ou NULL.

# 2. Caracteres
Caractere: Um tipo de dados que armazena caracteres de texto, como letras, números e símbolos.

## Exemplos em SQL:
CHAR, VARCHAR, TEXT

# CHAR 
é um tipo de dados que armazena uma string de comprimento fixo - ocupa sempre o espaço todo reservado
# VARCHAR
é um tipo de dados que armazena uma string de comprimento variável - ocupa apenas o espaço que for preenchido
# TEXT
é um tipo de dados que armazena uma string de comprimento variável muito grande (geralmente usada para armazenar grandes quantidades de texto).

# 3. Numeros
Um tipo de dados que armazena valores numéricos. Eles são usados ​​para armazenar números inteiros, números de ponto flutuante, números decimais e assim por diante. 

## Exemplos de tipos de dados numéricos em SQL:
### Valores exatos
# TINYINT
é um tipo de dados numérico em SQL que pode armazenar valores inteiros pequenos. O tipo TINYINT ocupa 1 byte de armazenamento e pode armazenar valores inteiros na faixa de -128 a 127, ou de 0 a 255 se for usado sem sinal (UNSIGNED TINYINT).

O tipo de dados TINYINT é frequentemente usado para armazenar valores booleanos em bases de dados, especialmente em sistemas que têm limitações de espaço ou desempenho. 

Por exemplo, numa base de dados que armazena informações sobre utilizadores, a coluna "Ativo" pode ser definida como TINYINT, onde um valor de 0 representa um utilizador inativo e um valor de 1 representa um utilizador ativo.

TINYINT também pode ser usado para armazenar outras informações numéricas pequenas, como códigos de status ou tipos de produtos, onde a faixa de valores é limitada e o armazenamento de um inteiro de 4 bytes seria excessivo.

Em resumo, TINYINT é um tipo de dados numérico compacto em SQL que pode armazenar valores inteiros pequenos e é frequentemente usado para armazenar informações booleanas ou outras informações numéricas limitadas.
# SMALLINT
é um tipo de dados numérico com um limite maior do que o TINYINT
# INT 
é um tipo de dados que armazena um número inteiro
# BIGINT
é um tipo de dados que armazena um número inteiro maior
# FLOAT
é um tipo de dados que armazena um número de ponto flutuante
# DECIMAL
é um tipo de dados que armazena um número decimal preciso com uma quantidade fixa de dígitos antes e depois do ponto decimal.

### Valores aproximados
# REAL
tem precisão aproximada de até 15 dígitos
É um tipo de dados numérico em SQL que é usado para armazenar números de ponto flutuante precisos, com um espaço de armazenamento de 4 bytes. O tipo REAL pode armazenar valores na faixa de aproximadamente -3,4 x 10^38 a 3,4 x 10^38, com uma precisão de cerca de 7 dígitos decimais.

O tipo de dados REAL é frequentemente usado em bases de dados para armazenar valores que exigem precisão de ponto flutuante, como resultados de medições, cálculos científicos ou financeiros. Por exemplo, numa base de dados financeiro, o valor da coluna "Saldo" numa tabela de contas bancárias pode ser definido como REAL para garantir a precisão dos valores financeiros armazenados.

O tipo REAL também pode ser usado num conjunto com outros tipos de dados numéricos, como INT ou BIGINT, para permitir cálculos precisos com valores de ponto flutuante. Além disso, o tipo REAL é mais preciso do que o tipo de dados FLOAT, que tem uma precisão de aproximadamente 6 dígitos decimais.

Em resumo, REAL é um tipo de dados numérico em SQL usado para armazenar valores de ponto flutuante com precisão de aproximadamente 7 dígitos decimais e é comumente usado em aplicações científicas, financeiras e de medição.

# FLOAT
é um tipo de dados numérico em SQL que é usado para armazenar números de ponto flutuante, com um espaço de armazenamento de 4 bytes ou mais, dependendo da precisão desejada. O tipo FLOAT pode armazenar valores na faixa de aproximadamente -1,79 x 10^308 a 1,79 x 10^308, com uma precisão de aproximadamente 6 dígitos decimais.

O tipo de dados FLOAT é frequentemente usado em bases de dados para armazenar valores que exigem precisão de ponto flutuante, como resultados de cálculos científicos, financeiros ou estatísticos. Por exemplo, numa base de dados de previsão de vendas, a coluna "Previsão de Vendas" pode ser definida como FLOAT para permitir a armazenamento de valores de vendas previstos que exigem precisão de ponto flutuante.

O tipo FLOAT também pode ser usado em conjunto com outros tipos de dados numéricos, como INT ou BIGINT, para permitir cálculos precisos com valores de ponto flutuante. No entanto, o tipo FLOAT é menos preciso do que o tipo de dados REAL, que tem uma precisão de aproximadamente 7 dígitos decimais.

É importante notar que, devido à imprecisão dos valores de ponto flutuante, podem ocorrer erros de arredondamento ao usar o tipo FLOAT em cálculos. Portanto, é importante escolher o tipo de dados correto com base na precisão desejada para os valores numéricos armazenados.

Em resumo, FLOAT é um tipo de dados numérico em SQL usado para armazenar valores de ponto flutuante com precisão de aproximadamente 6 dígitos decimais e é comumente usado em aplicações científicas, financeiras e estatísticas.

# 4. Temporais
Os tipos de dados temporais em SQL armazenam informações relacionadas a tempo e data. Eles são usados ​​para armazenar datas, horários, intervalos de tempo e assim por diante. 

## Exemplos de tipos de dados temporais em SQL:
# DATE
é um tipo de dados que armazena uma data
# TIME
é um tipo de dados que armazena um horário
# DATETIME
é um tipo de dados que armazena uma data e hora juntas
# TIMESTAMP
é um tipo de dados que armazena uma data e hora, mas com uma precisão maior do que DATETIME (até frações de segundo).


Alguns tipos de dados adicionais em SQL incluem tipos de dados binários (como BLOB e VARBINARY), tipos de dados de moeda (como MONEY), tipos de dados espaciais (como GEOMETRY) e tipos de dados de objeto (como JSON).