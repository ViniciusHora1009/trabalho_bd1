# TRABALHO 01:  App Doações (Aguardando nome do App pelo cliente)
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Vinicius da Hora Corte: vinicius.hora100@hotmail.com<br>
Juliano Antônio da Silveira: julianoantonio.015@gmail.com<br>
Gabriel Gonçalves da Costa: biel.costa26@gmail.com<br>
Vitor Zanoni Bermudes: vitorzanonib@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O sistema requisitado pelo cliente tem como propósito o gerenciamento dos usuários, tanto pessoas físicas quanto ONGs; e responsabiliza-se pelo fornecimento de meios para divulgação de suas doações e necessidades, além da comunicação entre ambas a parte a fim de interligar doador e necessitado para criar um ambiente de ajuda mútua onde todos são beneficiados.

### 3.MINI-MUNDO<br>
A idéia proposta é de um sistema online de doações, que permita uma interação simples e fácil entre a pessoa que deseja doar um determinado item e a pessoa que deseja recebê-lo. O sistema permitirá o cadastro de usuários, tanto o usuário “pessoa” como o usuário “ONG”, havendo apenas algumas diferenças, como seus dados cadastrais, etc.. Ambos os usuários poderão tanto efetuar doações como solicitar suas respectivas necessidades. Entretanto, as “ONGs” só podem realizar doações diretamente para usuários com alguma necessidade. Na hora de efetuar uma pesquisa por uma doação, haverá um filtro, levando em consideração: Estado, cidade, categoria e o raio de distância. No mesmo contexto de busca, haverá outro método denominado Mapa de Necessidades, nele bastaria ao usuário ativar sua localização, para ver todos os itens disponíveis em sua proximidade. Já na hora de divulgar algo para doação, bastaria um título, estado do item, CEP, quantidade, uma breve descrição do item doado e se possível uma foto do item. O responsável pelo item doado teria uma lista de interessados a sua disposição e ficaria a seu critério escolher a quem ele vai doar o seu item. Haverá um chat entre o doador e a pessoa interessada, em que a pessoa interessada poderá tirar possíveis dúvidas que possam não ter sido sanadas somente com a breve descrição do item divulgado, e também planejar como será feito a sua entrega. Para evitar fraudes e outros problemas, cada pessoa física terá uma classificação que lhe é concebida através do feedback de outros usuários após a realização de doações, os comentários e notas estarão disponíveis em seu perfil. Também é possível denunciar divulgações e usuários que violem alguma diretriz do sistema. Na questão de controle, para que um usuário simplesmente não saia fazendo várias solicitações de diversos itens, o sistema contará com uma espécie de moeda única, por semana/mês (a definir), o usuário irá receber tantas moedas, e ao efetuar doações, ele também receberá um determinada quantidade de moeda, com isso em mente, dada a determinada categoria, o item doado terá tal valor.<br>
![Arquivo PDF da Documentação de requisitos](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Documenta%C3%A7%C3%A3o%20de%20Requisitos.pdf)<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Prot%C3%B3tipo/tela_doacao.PNG "Doação")<br>
![Arquivo PDF do Protótipo Balsamiq feito para o sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Prot%C3%B3tipo/Prototipo.pdf "App Doações")<br>
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> O sistema deverá gerar os seguintes relatórios:
* Relatório que informe todas as necessidades já divulgadas no sistema por determinado usuário.
* Relatório que informe todas as doações já realizadas no sistema por determinado usuário.
* Relatório que informe todos os comentários realizados em cada doação já divulgada.
* Relatório de usuários "pessoa" incluino as seguintes informações: ID do usuário, nome do usuário, número de contato do usuário, e-mail, cpf e data de nascimento.
* Relatório de usuários "ONG" incluindo as seguintes informações: ID da ONG, nome da ONG, CNPJ da ONG, número de contato da ONG, e-mail e a longitude e latitude.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
![Tabela de dados AppDoações Excel](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Planilhas/Tabela%20de%20dados.xlsx?raw=true "Tabela - AppDoações")<br>
![Tabela de dados AppDoações Calc](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Planilhas/Tabela%20de%20dados.ods?raw=true "Tabela - AppDoações")
    
### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO        
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Conceitual/conceitual.png "Modelo Conceitual")
![Arquivo brM3 com modelo conceitual do sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Conceitual/conceitual.brM3 "Modelo conceitual")<br>
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Conceitual/UML.png "Diagrama de classes")
![Arquivo asta do diagrama de classes](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/UML/appDoacoes.asta "Diagrama de classes")<br>   
        
    
#### 5.1 Validação do Modelo Conceitual
    [ESTour]: [Willian João Daniel, Carolina de Souza, Alexandre Jastrow]
    [BoraJogar]: [Renato, Kaio Fábio, Maxwell]

#### 5.2 Descrição dos dados 
    PESSOA: Tabela que armazena informações relativa a pessoa física.<br>
        ID_PESSOA: Campo que armazena o código de identificação de cada pessoa usuária do sistema.<br>
        NUM_CELULAR: Campo que armazena o número do celular de cada pessoa usuária do sistema.<br>
        EMAIL: Campo que armazena o endereço de email de cada pessoa usuária do sistema.<br>
        DATA_NASCIMENTO: Campo que armazena a data de nascimento de cada pessoa usuária do sistema.<br>
        SALDO: Campo que armazena o saldo da moeda virtual do sistema de cada pessoa usuária.<br>
        NOME: Campo que armazena o nome de cada pessoa usuária.<br>
    
    ONG: Tabela que armazena informações relativa a ONG.<br>
        ID_ONG: Campo que armazena o código de identificação de cada ONG usuária do sistema.<br>
        CNPJ: Campo que armazena o cnpj de cada ONG usuária do sistema.<br>
        EMAIL: Campo que armazena o email de cada ONG usuária do sistema.<br>
        NUM_CONTATO: Campo que armazena o número de contato de cada ONG usuária do sistema.<br>
        NOME: Campo que armazena o nome de cada ONG usuária do sistema.<br>
        RUA: Campo que armazena a rua de encontro de uma doação.<br>
        BAIRRO: Campo que armazena o bairro de encontro de uma doação.<br>
        CIDADE: Campo que armazena a cidade de encontro de uma doação.<br>
        ESTADO: Campo que armazena a estado de encontro de uma doação.<br>
    
    AVALIACAO_USUARIO: Tabela que armazena informações relativa as avaliações recebidas por um usuário (pessoa física).<br>
        ID_AVALIACAO: Campo que armazena o código de identificação de cada avaliação feita por alguém.<br>
        NOTA: Campo que armazena a nota de 0 a 5 de uma avaliação criada.<br>
        COMENTARIO: Campo que armazena o conteúdo do comentário (texto) de uma avaliação.<br>
    
    ITEM_DOACAO: Tabela que armazena as informações relativa a uma doação cadastrada.<br>
        ID_DOACAO: Campo que armazena o código de identificação de uma doação cadastrada.<br>
        TITULO: Campo que armazena o título identificador que o usuário escreveu para sua doação.<br>
        DESCRICAO: Campo que armazena o a descrição (texto) que o usuário escreveu sobre sua doação.<br>
        RUA: Campo que armazena a rua de encontro de uma doação.<br>
        BAIRRO: Campo que armazena o bairro de encontro de uma doação.<br>
        CIDADE: Campo que armazena a cidade de encontro de uma doação.<br>
        ESTADO: Campo que armazena a estado de encontro de uma doação.<br>
    
    CATEGORIA: Tabela que armazena as informações relativa as categorias dos items que serão doados.<br>
        ID_CATEGORIA: Campo que armazena o código de identificação de uma categoria de item.<br>
        NOME: Campo que armazena o nome de uma categoria.<br>
        VALOR_MEDIO: Campo que armazena o valor possível para uma categoria com item em condições normais.<br>
        
    FOTO: Tabela que armazena as informações relativa às fotos vinculadas a uma doação.<br>
        ID_FOTO: Campo que armazena o código de identificação de uma foto.<br>
        NOME_ARQUIVO: Campo que armazena o nome do arquivo da foto.<br>
        
    ESTADO_ITEM: Tabela que armazena as informações relativa ao estado de conservação de um item a ser doado.<br>
        ID_ESTADO: Campo que armazena o código de identificação de um estado de conservação de um item.<br>
        NOME: Campo que armazena o nome de um estado de conservação de um item.<br>
       
    REQUISICAO_DOACAO: Tabela que armazena as informações relativa a requisição de retirada em uma doação de um usuário para outro.<br> 
    
    STATUS_REQUISICAO: Tabela que armazena as informações relativa a ao status de uma requisiçã, qual a situação dela no momento.<br>
        ID_STATUS: Campo que armazena o código de identificação de um status da requisição.<br>
        NOME: Campo que armazena o nome do status da requisição.<br>
   
    MENSAGEM_REQUISICAO: Tabela que armazena as informações relativas às mensagem trocadas pelos usuários em sua negociação numa requisição de doação.<br>
        ID_MENSAGEM: Campo que armazena o código de identificação de uma mensagem.<br>
        CONTEUDO: Campo que armazena o conteúdo da mensagem.<br>
        DATA_HORARIO: Campo que armazena a data e hora de envio de uma mensagem. <br>
        
    STATUS_MENSAGEM: Tabela que armazena as informações sobre o Status da mensagem.<br>
        ID_STATUS: Campo que armazena o código de identificação do status da mensagem.<br>
        NOME: Campo que armazena o nome do status da mensagem.<br>
        
    NECESSIDADE: Tabela que armazena as informações relativas às necessidades divulgadas pelos usuários (ONG ou pessoa).<br>
        ID_NECESSIDADE: Campo que armazena o código de identificação de uma necessidade.<br>
        TITULO: Campo que armazena o título indentificador de uma necessidade.<br>
        DESCRICAO: Campo que armazena a descrição (texto) referente a uma necessidade.
        VALOR: Campo que armazena o valor a ser recompensado pela ajuda ao necessitando.<br>
        RUA: Campo que armazena a rua de encontro de uma necessidade.<br>
        BAIRRO: Campo que armazena o bairro de encontro de uma necessidade.<br>
        CIDADE: Campo que armazena a cidade de encontro de uma necessidade.<br>
        ESTADO: Campo que armazena a estado de encontro de uma necessidade.<br>
    
    CATEGORIA_NECESSIDADE: Tabela que armazena as informações relativa as categorias das necessidades.<br>
        ID_CATEGORIA: Campo que armazena o código de identificação de uma categoria de item.<br>
        NOME: Campo que armazena o nome de uma categoria.<br>
        VALOR_MEDIO: Campo que armazena o valor possível para uma categoria com item em condições normais.<br>
        
    REQUISICAO_AJUDA: Tabela que armazena as informações relativa a requisição de ajuda em uma necessidade de um usuário.<br>
    
    STATUS_REQ_NECESSIDADE: Tabela que armazena as informações relativa a ao status de uma requisição de necessidade, qual a situação dela no momento.<br>
        ID_STATUS: Campo que armazena o código de identificação de um status da requisição.<br>
        NOME: Campo que armazena o nome do status da requisição.<br>
   
    MENSAGEM_NECESSIDADE: Tabela que armazena as informações relativas às mensagem trocadas pelos usuários em sua negociação numa requisição de ajuda a uma necessidade.<br>
        ID_MENSAGEM: Campo que armazena o código de identificação de uma mensagem.<br>
        CONTEUDO: Campo que armazena o conteúdo da mensagem.<br>
        DATA_HORA: Campo que armazena a data e hora de envio de uma mensagem. <br>
    
    STATUS_MENSAGEM_NEC: Tabela que armazena as informações sobre o Status da mensagem de no chat da necessidade.<br>
        ID_STATUS: Campo que armazena o código de identificação do status da mensagem.<br>
        NOME: Campo que armazena o nome do status da mensagem.<br>
    
    LOGRADOURO: Tabela que armazena as informações sobre um logradouro.<br>
        CEP: Campo que armazena o código de identificação(CEP) de um logradouro.<br>
        NOME: Campo que armazena o nome do logradouro.<br>

    BAIRRO: Tabela que armazena as informações sobre um bairro.<br>
        ID: Campo que armazena o código de identificação de um bairro.<br>
        NOME: Campo que armazena o nome do bairro.<br>
        
    CIDADE: Tabela que armazena as informações sobre uma cidade.<br>
        ID: Campo que armazena o código de identificação de uma cidade.<br>
        NOME: Campo que armazena o nome da cidade.<br>       

    ESTADO: Tabela que armazena as informações sobre um estado (local).<br>
        ID: Campo que armazena o código de identificação de um estado.<br>
        NOME: Campo que armazena o nome da estado.<br>     
        
#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    Cria um usuário, pesquisa por uma doação e pesquisa por uma necessidade.
    
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    Usuário, ONG e item_doação
    
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    Usuário, ONG, item_doação, necessidade e requisita_requisição_doação.
    

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/L%C3%B3gico/logico.png "Modelo Lógico")
![Arquivo brM3 com modelo lógico do sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/L%C3%B3gico/logico.brM3 "Modelo físico")<br>

### 7	MODELO FÍSICO<br>
![Arquivo SQL com modelo físico do sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/F%C3%ADsico/fisico_definitivo2.sql "Modelo físico")<br>
        
>## Marco de Entrega 01 em: 07/10/2019<br>
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Arquivo SQL com inserts](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Insert/inserts.sql "Inserts aplicados")<br>


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
Link do Colab: https://colab.research.google.com/drive/1dCpHkfv8w8GYIwHhmsopFEzdC2vvJ6_o
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SELECT * FROM PESSOA;<br>
![9.1-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-1.PNG "Tabela Pessoa")<br>

SELECT * FROM AVALIACAO_USUARIO;<br>
![9.1-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-2.PNG "Tabela Avaliação Usuário")<br>

SELECT * FROM ONG;<br>
![9.1-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-3.PNG "Tabela Ong")<br>

SELECT * FROM CATEGORIA;<br>
![9.1-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-4.PNG "Tabela Categoria")<br>

SELECT * FROM ITEM_DOACAO;<br>
![9.1-5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-5.PNG "Tabela Item Doação")<br>

SELECT * FROM FOTO;<br>
![9.1-6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-6.PNG "Tabela Foto")<br>

SELECT * FROM STATUS_REQUISICAO;<br>
![9.1-7](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-7.PNG "Tabela Status Requisição")<br>

SELECT * FROM ESTADO_ITEM;<br>
![9.1-8](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-8.PNG "Tabela Estado Item")<br>

SELECT * FROM STATUS_REQ_NECESSIDADE;<br>
![9.1-9](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-9.PNG "Tabela Status Req Necessidade")<br>

SELECT * FROM MENSAGEM_REQUISICAO;<br>
![9.1-10](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-10.PNG "Tabela Mensagem Requisição")<br>

SELECT * FROM STATUS_MENSAGEM;<br>
![9.1-11](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-11.PNG "Tabela Status Mensagem")<br>

SELECT * FROM STATUS_MENSAGEM_NEC;<br>
![9.1-12](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-12.PNG "Tabela Status Mensagem Nec")<br>

SELECT * FROM NECESSIDADE;<br>
![9.1-13](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-13.PNG "Tabela Necessidade")<br>

SELECT * FROM FOTO_NECESSIDADE;<br>
![9.1-14](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-14.PNG "Tabela Foto Necessidade")<br>

SELECT * FROM MENSAGEM_NECESSIDADE;<br>
![9.1-15](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-15.PNG "Tabela Mensagem Necessidade")<br>

SELECT * FROM REQUISITA_DOACAO_REQUISITA;<br>
![9.1-16](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-16.PNG "Tabela Requisita Doação Requisita")<br>

SELECT * FROM INTO REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE;<br>
![9.1-17](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-17.PNG "Tabela Requisição Ajuda Supre Pessoa Ong Necessidade")<br>

SELECT * FROM EXPOE_PESSOA_NECESSIDADE_ONG;<br>
![9.1-18](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-18.PNG "Tabela Expoe Pessoa Necessidade")<br>

SELECT * FROM POSSIBILITA;<br>
![9.1-19](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-19.PNG "Tabela Possibilita")<br>

SELECT * FROM POSSIBILITA_AJUDA;<br>
![9.1-20](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-20.PNG "Tabela Possibilita Ajuda")<br>

SELECT * FROM ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG;<br>
![9.1-21](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.1-21.PNG "Tabela Envia Pessoa Mensagem Necessidade Ong")<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

SELECT * FROM ong WHERE cidade = 'Cariacica';
![9.2-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.2-1.PNG)<br>

SELECT * FROM avaliacao_usuario WHERE nota = 5;
![9.2-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.2-2.PNG)<br>

SELECT * FROM categoria WHERE valor_medio < 200;
![9.2-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.2-3.PNG)<br>

SELECT * FROM pessoa WHERE saldo > 500;
![9.2-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.2-4.PNG)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

SELECT * FROM item_doacao WHERE estado = 'ES' AND cidade = 'Vitória' AND bairro != 'Estrelinha';
![9.3-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-1.PNG)<br>

SELECT * FROM item_doacao WHERE estado = 'ES' OR estado = 'RJ';
![9.3-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-2.PNG)<br>

SELECT * FROM item_doacao WHERE estado = 'ES' AND (cidade = 'Vitória' OR  cidade = 'Vila Velha');
![9.3-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-3.PNG)<br>

SELECT * FROM requisicao_ajuda_supre_pessoa_ong_necessidade WHERE fk_pessoa_id_pessoa IS NOT null;
![9.3-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-4.PNG)<br>

SELECT * FROM PESSOA WHERE saldo >= 50 AND saldo <= 100 ORDER BY saldo;
![9.3-5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-5.PNG)<br>

SELECT * FROM PESSOA WHERE saldo = 0;
![9.3-6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-6.PNG)<br>

SELECT * FROM PESSOA WHERE saldo > 500 ORDER BY saldo;
![9.3-7](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-7.PNG)<br>

SELECT * FROM CATEGORIA_NECESSIDADE WHERE valor_medio < 350 ORDER BY valor_medio;
![9.3-8](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.3-8.PNG)<br>

ALTER TABLE categoria RENAME nome TO "nome_categoria";<br>
ALTER TABLE categoria_necessidade RENAME nome TO nome_categoria;<br>
ALTER TABLE estado_item RENAME nome TO condicao;<br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

SELECT * FROM pessoa WHERE nome LIKE 'J%';
![9.4-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-1.PNG)<br>

SELECT * FROM pessoa WHERE nome LIKE '%a';
![9.4-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-2.PNG)<br>

SELECT * FROM pessoa WHERE nome LIKE '%Car%';
![9.4-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-3.PNG)<br>

SELECT * FROM mensagem_requisicao WHERE conteudo LIKE '%?';
![9.4-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-4.PNG)<br>

SELECT * FROM mensagem_necessidade WHERE conteudo LIKE '%?';
![9.4-5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-5.PNG)<br>

SELECT * FROM item_doacao WHERE titulo LIKE '%velh%';
![9.4-6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-6.PNG)<br>

SELECT * FROM item_doacao WHERE descricao LIKE '%usad%';
![9.4-7](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-7.PNG)<br>

SELECT * FROM ONG WHERE nome ILIKE 'f%';
![9.4-8](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-8.PNG)<br>

SELECT * FROM necessidade WHERE descricao ILIKE '%paciente%';
![9.4-9](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.4-9.PNG)<br>

SELECT nome, CURRENT_DATE, data_nascimento, (AGE(current_date, data_nascimento)) FROM pessoa;
![9.4-10](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-10.PNG)<br>

SELECT nome, CURRENT_DATE, data_nascimento, ('year',(AGE(current_date, data_nascimento))) FROM pessoa;
![9.4-11](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.4-11.PNG)<br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

UPDATE pessoa SET email = 'joser12@gmail.com' WHERE nome = 'José Ricardo';<br>
SELECT * FROM pessoa WHERE nome = 'José Ricardo';
![9.5-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.5-1.PNG)<br>

UPDATE ong SET num_contato = 33589741 WHERE nome = 'Fundação Pedro Nolasco';<br>
SELECT * FROM ong WHERE nome = 'Fundação Pedro Nolasco';
![9.5-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.5-2.PNG)<br>

UPDATE ong SET email = 'projvidadigna@hotmail.com' WHERE nome = 'Projeto Vida Digna';<br>
SELECT * FROM ong WHERE nome = 'Projeto Vida Digna';
![9.5-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.5-3.PNG)<br>

UPDATE ong SET email = 'lutapelofuturo@outlook.com' WHERE nome = 'Luta pelo Futuro';<br>
SELECT * FROM ong WHERE nome = 'Luta pelo Futuro';
![9.5-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.5-4.PNG)<br>

UPDATE pessoa SET email = 'emailapp@gmail.com' WHERE nome = 'Heberson Machado';<br>
SELECT * FROM pessoa WHERE nome = 'Heberson Machado';
![9.5-5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.5-5.PNG)<br>

UPDATE ong SET email = 'direitos.dos.surdos@gmail.com' WHERE nome = 'Direitos dos Surdos';<br>
SELECT * FROM ong WHERE nome = 'Direitos dos Surdos';
![9.5-6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.5-6.PNG)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>

SELECT PESSOA.ID_PESSOA AS "ID DO USUÁRIO",<br>
PESSOA.NOME,<br>
PESSOA.CPF,<br>
AVALIACAO_USUARIO.ID_AVALIACAO AS "ID DE AVALIAÇÃO",<br>
AVALIACAO_USUARIO.NOTA,<br>
AVALIACAO_USUARIO.COMENTARIO,<br>
ITEM_DOACAO.ID_DOACAO AS "ID DA DOAÇÃO",<br>
ITEM_DOACAO.TITULO,<br>
CATEGORIA.NOME AS "CATEGORIA DA DOAÇÃO",<br>
FOTO.CAMINHO AS "CAMINHO DA FOTO",<br>
ESTADO_ITEM.NOME AS "ESTADO DE CONSERVAÇÃO",<br>
STATUS_REQUISICAO.NOME AS "STATUS DA REQUISIÇÃO",<br>
MENSAGEM_REQUISICAO.CONTEUDO AS "MENSAGEM",<br>
STATUS_MENSAGEM.NOME AS "STATUS DA MENSAGEM",<br>
NECESSIDADE.TITULO,<br>
FOTO_NECESSIDADE.CAMINHO AS "CAMINHO DA FOTO NECESSIDADE",<br>
CATEGORIA_NECESSIDADE.NOME AS "CATEGORIA DA NECESSIDADE",<br>
MENSAGEM_NECESSIDADE.CONTEUDO AS "MENSAGEM DA NECESSIDADE",<br>
STATUS_MENSAGEM_NEC.NOME AS "STATUS DA MENSAGEM DA NECESSIDADE",<br>
STATUS_REQ_NECESSIDADE "AS STATUS DA REQUISIÇÃO DA NECESSIDADE"<br>
FROM PESSOA<br>
INNER JOIN AVALIACAO_USUARIO ON(PESSOA.ID_PESSOA = AVALIACAO_USUARIO.FK_PESSOA_ID_PESSOA_)<br>
INNER JOIN ITEM_DOACAO ON(PESSOA.ID_PESSOA = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN CATEGORIA ON(ITEM_DOACAO.FK_CATEGORIA_ID_CATEGORIA = CATEGORIA.ID_CATEGORIA)<br>
INNER JOIN FOTO ON(ITEM_DOACAO.ID_DOACAO = FOTO.FK_ITEM_DOACAO_ID_DOACAO)<br>
INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)<br>
INNER JOIN REQUISITA_DOACAO_REQUISITA ON(PESSOA.ID_PESSOA = REQUISITA_DOACAO_REQUISITA.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN STATUS_REQUISICAO ON(REQUISITA_DOACAO_REQUISITA.FK_STATUS_REQUISICAO_ID_STATUS = STATUS_REQUISICAO.ID_STATUS)<br>
INNER JOIN POSSIBILITA ON(REQUISITA_DOACAO_REQUISITA.ID = POSSIBILITA.FK_REQUISITA_DOACAO_REQUISITA_ID)<br>
INNER JOIN MENSAGEM_REQUISICAO ON(POSSIBILITA.FK_MENSAGEM_REQUISICAO_ID_MENSAGEM = MENSAGEM_REQUISICAO.ID_MENSAGEM AND PESSOA.ID_PESSOA = MENSAGEM_REQUISICAO.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN STATUS_MENSAGEM ON(MENSAGEM_REQUISICAO.FK_STATUS_MENSAGEM_ID_MENSAGEM_STATUS = STATUS_MENSAGEM.ID_MENSAGEM_STATUS)<br>
INNER JOIN EXPOE_PESSOA_NECESSIDADE_ONG ON (PESSOA.ID_PESSOA = EXPOE_PESSOA_NECESSIDADE_ONG.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN NECESSIDADE ON(EXPOE_PESSOA_NECESSIDADE_ONG.FK_NECESSIDADE_ID_NECESSIDADE = NECESSIDADE.ID_NECESSIDADE)<br>
INNER JOIN FOTO_NECESSIDADE ON(NECESSIDADE.ID_NECESSIDADE = FOTO_NECESSIDADE.FK_NECESSIDADE_ID_NECESSIDADE)<br>
INNER JOIN CATEGORIA_NECESSIDADE ON(NECESSIDADE.FK_CATEGORIA_NECESSIDADE_ID_CATEGORIA = CATEGORIA_NECESSIDADE.ID_CATEGORIA)<br>
INNER JOIN REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE ON(PESSOA.ID_PESSOA = REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN STATUS_REQ_NECESSIDADE ON(REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE.FK_STATUS_REQ_NECESSIDADE_ID_MENSAGEM_STATUS = STATUS_REQ_NECESSIDADE.ID_MENSAGEM_STATUS)<br>
INNER JOIN POSSIBILITA_AJUDA ON(REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE.ID = POSSIBILITA_AJUDA.FK_REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE_ID)<br>
INNER JOIN ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG ON (PESSOA.ID_PESSOA = ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN MENSAGEM_NECESSIDADE ON(POSSIBILITA_AJUDA.FK_MENSAGEM_NECESSIDADE_ID_MENSAGEM = MENSAGEM_NECESSIDADE.ID_MENSAGEM AND ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG.FK_MENSAGEM_NECESSIDADE_ID_MENSAGEM = MENSAGEM_NECESSIDADE.ID_MENSAGEM)<br>
INNER JOIN STATUS_MENSAGEM_NEC ON(MENSAGEM_NECESSIDADE.FK_STATUS_MENSAGEM_NEC_ID_STATUS = STATUS_MENSAGEM_NEC.ID_STATUS)<br>
GROUP BY PESSOA.ID_PESSOA,<br>
AVALIACAO_USUARIO.ID_AVALIACAO,<br>
ITEM_DOACAO.ID_DOACAO,<br>
CATEGORIA.ID_CATEGORIA,<br>
ESTADO_ITEM.ID_ESTADO,<br>
FOTO.ID_FOTO,<br>
MENSAGEM_REQUISICAO.ID_MENSAGEM,<br>
STATUS_REQUISICAO.ID_STATUS,<br>
STATUS_MENSAGEM.ID_MENSAGEM_STATUS,<br>
NECESSIDADE.ID_NECESSIDADE,<br>
FOTO_NECESSIDADE.ID_FOTO,<br>
CATEGORIA_NECESSIDADE.ID_CATEGORIA,<br>
MENSAGEM_NECESSIDADE.ID_MENSAGEM,<br>
STATUS_MENSAGEM_NEC.ID_STATUS,<br>
STATUS_REQ_NECESSIDADE.ID_MENSAGEM_STATUS<br>
ORDER BY PESSOA.ID_PESSOA;<br>
![9.6-1.1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-1.1.PNG)
![9.6-1.2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-1.2.PNG)<br>

SELECT PESSOA.ID_PESSOA AS "ID DO USUÁRIO",<br>
PESSOA.NOME,<br>
AVG(NOTA) AS "MEDIA"<br>
FROM PESSOA<br>
INNER JOIN AVALIACAO_USUARIO ON(PESSOA.ID_PESSOA = AVALIACAO_USUARIO.FK_PESSOA_ID_PESSOA_)<br>
GROUP BY PESSOA.ID_PESSOA;<br>
![9.6-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-2.PNG)<br>

SELECT PESSOA.ID_PESSOA AS "ID DO USUÁRIO",<br>
PESSOA.NOME,<br>
ITEM_DOACAO.ID_DOACAO AS "ID DA DOAÇÃO",<br>
ITEM_DOACAO.TITULO,<br>
FOTO.CAMINHO,<br>
CATEGORIA.NOME,<br>
CATEGORIA.VALOR_MEDIO,<br>
ESTADO_ITEM.NOME,<br>
ITEM_DOACAO.RUA,<br>
ITEM_DOACAO.BAIRRO,<br>
ITEM_DOACAO.CIDADE,<br>
ITEM_DOACAO.ESTADO<br>
FROM PESSOA<br>
INNER JOIN ITEM_DOACAO ON(PESSOA.ID_PESSOA = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN CATEGORIA ON(ITEM_DOACAO.FK_CATEGORIA_ID_CATEGORIA = CATEGORIA.ID_CATEGORIA)<br>
INNER JOIN FOTO ON(ITEM_DOACAO.ID_DOACAO = FOTO.FK_ITEM_DOACAO_ID_DOACAO)<br>
INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)<br>
GROUP BY PESSOA.ID_PESSOA,ITEM_DOACAO.ID_DOACAO,FOTO.ID_FOTO,CATEGORIA.ID_CATEGORIA,ESTADO_ITEM.ID_ESTADO<br>
ORDER BY PESSOA.ID_PESSOA;<br>
![9.6-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-3.PNG)<br>

SELECT ONG.ID_ONG,<br>
ONG.NOME,<br>
NECESSIDADE.ID_NECESSIDADE,<br>
NECESSIDADE.TITULO,<br>
CATEGORIA_NECESSIDADE.NOME,<br>
CATEGORIA_NECESSIDADE.VALOR_MEDIO,<br>
FOTO_NECESSIDADE.CAMINHO,<br>
NECESSIDADE.RUA,<br>
NECESSIDADE.BAIRRO,<br>
NECESSIDADE.CIDADE,<br>
NECESSIDADE.ESTADO<br>
FROM ONG<br>
INNER JOIN EXPOE_PESSOA_NECESSIDADE_ONG ON (ONG.ID_ONG = EXPOE_PESSOA_NECESSIDADE_ONG.FK_ONG_ID_ONG)<br>
INNER JOIN NECESSIDADE ON(EXPOE_PESSOA_NECESSIDADE_ONG.FK_NECESSIDADE_ID_NECESSIDADE = NECESSIDADE.ID_NECESSIDADE)<br>
INNER JOIN FOTO_NECESSIDADE ON(NECESSIDADE.ID_NECESSIDADE = FOTO_NECESSIDADE.FK_NECESSIDADE_ID_NECESSIDADE)<br>
INNER JOIN CATEGORIA_NECESSIDADE ON(NECESSIDADE.FK_CATEGORIA_NECESSIDADE_ID_CATEGORIA = CATEGORIA_NECESSIDADE.ID_CATEGORIA)<br>
GROUP BY ONG.ID_ONG, NECESSIDADE.ID_NECESSIDADE, FOTO_NECESSIDADE.ID_FOTO, CATEGORIA_NECESSIDADE.ID_CATEGORIA<br>
ORDER BY ONG.ID_ONG;<br>
![9.6-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-4.PNG)<br>

SELECT PESSOA.ID_PESSOA,<br>
PESSOA.NOME,<br>
NECESSIDADE.ID_NECESSIDADE,<br>
NECESSIDADE.TITULO,<br>
CATEGORIA_NECESSIDADE.NOME,<br>
CATEGORIA_NECESSIDADE.VALOR_MEDIO,<br>
FOTO_NECESSIDADE.CAMINHO,<br>
NECESSIDADE.RUA,<br>
NECESSIDADE.BAIRRO,<br>
NECESSIDADE.CIDADE,<br>
NECESSIDADE.ESTADO<br>
FROM PESSOA<br>
INNER JOIN EXPOE_PESSOA_NECESSIDADE_ONG ON (PESSOA.ID_PESSOA = EXPOE_PESSOA_NECESSIDADE_ONG.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN NECESSIDADE ON(EXPOE_PESSOA_NECESSIDADE_ONG.FK_NECESSIDADE_ID_NECESSIDADE = NECESSIDADE.ID_NECESSIDADE)<br>
INNER JOIN FOTO_NECESSIDADE ON(NECESSIDADE.ID_NECESSIDADE = FOTO_NECESSIDADE.FK_NECESSIDADE_ID_NECESSIDADE)<br>
INNER JOIN CATEGORIA_NECESSIDADE ON(NECESSIDADE.FK_CATEGORIA_NECESSIDADE_ID_CATEGORIA = CATEGORIA_NECESSIDADE.ID_CATEGORIA)<br>
GROUP BY PESSOA.ID_PESSOA, NECESSIDADE.ID_NECESSIDADE, FOTO_NECESSIDADE.ID_FOTO, CATEGORIA_NECESSIDADE.ID_CATEGORIA<br>
ORDER BY PESSOA.ID_PESSOA<br>
![9.6-5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-5.PNG)<br>

SELECT PESSOA.ID_PESSOA,<br>
PESSOA.NOME,<br>
REQUISITA_DOACAO_REQUISITA.ID,<br>
STATUS_REQUISICAO.NOME,<br>
ITEM_DOACAO.TITULO,<br>
CATEGORIA.NOME,<br>
CATEGORIA.VALOR_MEDIO,<br>
ITEM_DOACAO.RUA,<br>
ITEM_DOACAO.BAIRRO,<br>
ITEM_DOACAO.CIDADE,<br>
ITEM_DOACAO.ESTADO,<br>
ESTADO_ITEM.NOME<br>
FROM PESSOA<br>
INNER JOIN REQUISITA_DOACAO_REQUISITA ON(PESSOA.ID_PESSOA = REQUISITA_DOACAO_REQUISITA.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN STATUS_REQUISICAO ON(REQUISITA_DOACAO_REQUISITA.FK_STATUS_REQUISICAO_ID_STATUS = STATUS_REQUISICAO.ID_STATUS)<br>
INNER JOIN ITEM_DOACAO ON(REQUISITA_DOACAO_REQUISITA.FK_ITEM_DOACAO_ID_DOACAO = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN CATEGORIA ON(ITEM_DOACAO.FK_CATEGORIA_ID_CATEGORIA = CATEGORIA.ID_CATEGORIA)<br>
INNER JOIN FOTO ON(ITEM_DOACAO.ID_DOACAO = FOTO.FK_ITEM_DOACAO_ID_DOACAO)<br>
INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)<br>
GROUP BY PESSOA.ID_PESSOA, ITEM_DOACAO.ID_DOACAO, FOTO.ID_FOTO, CATEGORIA.ID_CATEGORIA, ESTADO_ITEM.ID_ESTADO, REQUISITA_DOACAO_REQUISITA.ID, STATUS_REQUISICAO.ID_STATUS<br>
ORDER BY PESSOA.ID_PESSOA<br>
![9.6-6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-7.PNG)<br>

SELECT PESSOA.ID_PESSOA,<br>
PESSOA.NOME,<br>
ITEM_DOACAO.TITULO,<br>
MENSAGEM_REQUISICAO.ID_MENSAGEM,<br>
MENSAGEM_REQUISICAO.CONTEUDO,<br>
MENSAGEM_REQUISICAO.DATA1,<br>
MENSAGEM_REQUISICAO.HORA,<br>
STATUS_MENSAGEM.NOME<br>
FROM PESSOA<br>
INNER JOIN REQUISITA_DOACAO_REQUISITA ON(PESSOA.ID_PESSOA = REQUISITA_DOACAO_REQUISITA.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN STATUS_REQUISICAO ON(REQUISITA_DOACAO_REQUISITA.FK_STATUS_REQUISICAO_ID_STATUS = STATUS_REQUISICAO.ID_STATUS)<br>
INNER JOIN ITEM_DOACAO ON(REQUISITA_DOACAO_REQUISITA.FK_ITEM_DOACAO_ID_DOACAO = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN POSSIBILITA ON(REQUISITA_DOACAO_REQUISITA.ID = POSSIBILITA.FK_REQUISITA_DOACAO_REQUISITA_ID)<br>
INNER JOIN MENSAGEM_REQUISICAO ON(POSSIBILITA.FK_MENSAGEM_REQUISICAO_ID_MENSAGEM = MENSAGEM_REQUISICAO.ID_MENSAGEM AND PESSOA.ID_PESSOA = MENSAGEM_REQUISICAO.FK_PESSOA_ID_PESSOA)<br>
INNER JOIN STATUS_MENSAGEM ON(MENSAGEM_REQUISICAO.FK_STATUS_MENSAGEM_ID_MENSAGEM_STATUS = STATUS_MENSAGEM.ID_MENSAGEM_STATUS)<br>
INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)<br>
GROUP BY PESSOA.ID_PESSOA, ITEM_DOACAO.ID_DOACAO,REQUISITA_DOACAO_REQUISITA.ID, STATUS_MENSAGEM.ID_MENSAGEM_STATUS, MENSAGEM_REQUISICAO.ID_MENSAGEM<br>
ORDER BY MENSAGEM_REQUISICAO.ID_MENSAGEM<br>
![9.6-7](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Consultas/9.6-8.PNG)<br>

>## Marco de Entrega 02 em: 21/10/2019<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>


#### 9.11 Relatórios e Gráficos

**Histograma do saldo das pessoas**<br>

![Gráfico 1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/1.PNG)<br>

**Histograma do número de doações das pessoas**<br>

![Gráfico 2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/2.PNG)<br>

**Histograma do número de necessidades das pessoas**<br>

![Gráfico 3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/3.PNG)<br>

**Histograma do número de requisições de doação das pessoas**<br>

![Gráfico 4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/4.PNG)<br>

**Histograma do número de requisições de ajuda das pessoas**<br>

![Gráfico 5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/5.PNG)<br>

**Porcentagem de itens doados por categoria**<br>

![Gráfico 6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/6.PNG)<br>

**Porcentagem de necessidades por categoria**<br>

![Gráfico 7](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/7.PNG)<br>

**Gráfico da porcentagem do estado das doações**<br>

![Gráfico 8](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/8.PNG)<br>

**Gráfico do status das requisições de doações**<br>

![Gráfico 10](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/10.PNG)<br>

**Gráfico do status das requisições de ajuda a necessitados**<br>

![Gráfico 11](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/11.PNG)<br>

**Gráfico da porcentagem do tipo de categoria mais requisitada em doações**<br>

![Gráfico 12](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/12.PNG)<br>

**Gráfico da porcentagem do tipo de categoria mais requisitada de ajuda para necessidades**<br>

![Gráfico 13](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/Gr%C3%A1ficos/13.PNG)<br>

>## Marco de Entrega 03 em: 04/11/2019<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
#### a) Pontos Chave do MINI-MUNDO
#### b) 5 principais tabelas/fluxos do sistema
#### c) Perguntas que podem ser respondidads com o sistema proposto
#### d) Modelo Conceitual
#### e) Modelo Lógico
#### f) Relatórios e Gráficos mais importantes para o sistema (mínimo 5) 
#### --> Tempo de apresentação 10 minutos


### 11 Backup completo do banco de dados postgres
![Arquivo backup com restauração do banco](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Backup/appdoacoes.backup "Backup do banco")<br>

Validador por:<br>
    [ContrateiServiços]: [André, Mayke, Bianca]<br>
    [BoraJogar]: [Renato, Kaio Fábio, Maxwell]<br>
    

>## Marco de Entrega 04 em: 18/11/2019<br>


### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


