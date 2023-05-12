# PRINCIPAIS TIPOS DE RESTRIÇÕES QUE PODEM SER APLICADAS EM SQL
Em SQL (Structured Query Language), as restrições são usadas para impor regras ou limitações aos dados armazenados em uma tabela. As restrições podem ser aplicadas DURANTE A CRIAÇÃO DA TABELA ou posteriormente, usando a declaração ALTER TABLE.

Cada restrição é útil para garantir a integridade e consistência dos dados em uma tabela.

Aqui estão os principais tipos de restrições em SQL:

# Restrição de chave primária (Primary key constraint):
essa restrição é usada para garantir que cada linha em uma tabela tenha uma identificação exclusiva. A chave primária é uma ou mais colunas que identificam exclusivamente uma linha em uma tabela. 

# Restrição de chave estrangeira (Foreign key constraint): 
essa restrição é usada para garantir que os dados em uma tabela estejam sincronizados com outra tabela relacionada. A chave estrangeira é uma ou mais colunas que fazem referência à chave primária em outra tabela.

# Restrição de integridade de domínio (Domain integrity constraint): 
essa restrição é usada para garantir que os dados em uma coluna atendam a um conjunto específico de regras ou restrições, como um intervalo de valores, tipo de dados ou formato de dados.

# Restrição de integridade referencial (Referential integrity constraint): 
essa restrição é usada para garantir que os dados em uma tabela relacionada estejam sincronizados com os dados em outra tabela relacionada. Por exemplo, uma restrição de integridade referencial pode garantir que um pedido de compra só possa ser feito se o cliente já estiver cadastrado na tabela de clientes.

# Restrição de verificação (Check constraint): 
Força uma condição específica numa coluna
essa restrição é usada para garantir que os dados em uma coluna atendam a uma condição específica, como um intervalo de valores ou uma expressão booleana.

# Restrição de nulo (Null constraint) - NOT NULL: 
Não permite nulos
essa restrição é usada para garantir que uma coluna não aceite valores nulos. Quando uma restrição de nulo é aplicada a uma coluna, ela exige que os usuários insiram um valor para essa coluna toda vez que uma nova linha for adicionada à tabela.

# Unique
Força a que todos os valores numa coluna sejam diferentes

 