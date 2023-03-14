# Atividade 1 SQL.
A atividade apresenta um conjunto de comandos DDL em SQL que serve para criação de 4 tabelas sendo elas. Cliente, Carro Apolice e Sinistro. Essa atividade foi realizada na univercidade FATEC Itapira, com o lecionador Matheus Fuini.

# Explicação sobre o código criado.
A tabela Clientes contém informações básicas sobre os clientes da seguradora, como nome, CPF e telefone celular, juntamente com uma chave primária CodCliente. As colunas CPF e TelefoneCelular têm restrições UNIQUE, garantindo que não haja duplicatas de informações nessas colunas. A coluna Cidade tem um valor padrão definido como "Itapira".

A tabela Carro é utilizada para armazenar informações sobre os veículos segurados, como a marca, modelo e ano, juntamente com uma chave primária CodCarro.

A tabela Apólice é responsável por associar um cliente a um carro e registrar informações sobre a vigência da apólice, como a data de início da vigência. A tabela possui uma chave primária CodApolice, juntamente com chaves estrangeiras CodCliente e CodCarro, que referenciam as tabelas Clientes e Carro, respectivamente. Além disso, a coluna DataInicioVigencia possui uma restrição CHECK que garante que a data de início da vigência seja maior do que a data atual.

Por fim, a tabela Sinistro é utilizada para registrar informações sobre sinistros ocorridos, como a apólice e o carro envolvidos. A tabela possui uma chave primária composta pelas colunas CodApolice e CodCarro, que referenciam as tabelas Apólice e Carro, respectivamente, juntamente com chaves estrangeiras que garantem a integridade referencial entre as tabelas.
