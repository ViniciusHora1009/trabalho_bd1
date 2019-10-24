# TRABALHO 01:  App Doações (Aguardando nome do App pelo cliente)
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Vinicius da Hora Corte: vinicius.hora100@hotmail.com<br>
Juliano Antônio da Silveira: julianoantonio.015@gmail.com<br>
Gabriel Gonçalves da Costa: biel.costa26@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O sistema requisitado pelo cliente tem como propósito o gerenciamento dos usuários, tanto pessoas físicas quanto ONGs; e responsabiliza-se pelo fornecimento de meios para divulgação de suas doações e necessidades, além da comunicação entre ambas a parte a fim de interligar doador e necessitado para criar um ambiente de ajuda mútua onde todos são beneficiados.

### 3.MINI-MUNDO<br>
A idéia proposta é de um sistema online de doações, que permita uma interação simples e fácil entre a pessoa que deseja doar um determinado item e a pessoa que deseja recebê-lo. O sistema permitirá o cadastro de usuários, tanto o usuário “pessoa” como o usuário “ONG”, havendo apenas algumas diferenças, como seus dados cadastrais, etc.. Ambos os usuários poderão tanto efetuar doações como solicitar suas respectivas necessidades. Entretanto, as “ONGs” só podem realizar doações diretamente para usuários com alguma necessidade. Na hora de efetuar uma pesquisa por uma doação, haverá um filtro, levando em consideração: Estado, cidade, categoria e o raio de distância. No mesmo contexto de busca, haverá outro método denominado Mapa de Necessidades, nele bastaria ao usuário ativar sua localização, para ver todos os itens disponíveis em sua proximidade. Já na hora de divulgar algo para doação, bastaria um título, estado do item, CEP, quantidade, uma breve descrição do item doado e se possível uma foto do item. O responsável pelo item doado teria uma lista de interessados a sua disposição e ficaria a seu critério escolher a quem ele vai doar o seu item. Haverá um chat entre o doador e a pessoa interessada, em que a pessoa interessada poderá tirar possíveis dúvidas que possam não ter sido sanadas somente com a breve descrição do item divulgado, e também planejar como será feito a sua entrega. Para evitar fraudes e outros problemas, cada pessoa física terá uma classificação que lhe é concebida através do feedback de outros usuários após a realização de doações, os comentários e notas estarão disponíveis em seu perfil. Também é possível denunciar divulgações e usuários que violem alguma diretriz do sistema. Na questão de controle, para que um usuário simplesmente não saia fazendo várias solicitações de diversos itens, o sistema contará com uma espécie de moeda única, por semana/mês (a definir), o usuário irá receber tantas moedas, e ao efetuar doações, ele também receberá um determinada quantidade de moeda, com isso em mente, dada a determinada categoria, o item doado terá tal valor.<br>
![Arquivo PDF da Documentação de requisitos](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Documenta%C3%A7%C3%A3o%20de%20Requisitos.pdf)<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/tela_doacao.PNG "Doação")<br>
![Arquivo PDF do Protótipo Balsamiq feito para o sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Prototipo.pdf "App Doações")<br>
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
![Tabela de dados AppDoações Excel](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Tabela%20de%20dados.xlsx?raw=true "Tabela - AppDoações")<br>
![Tabela de dados AppDoações Calc](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Tabela%20de%20dados.ods?raw=true "Tabela - AppDoações")
    
### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO        
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/conceitual.png "Modelo Conceitual")
![Arquivo brM3 com modelo conceitual do sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/conceitual.brM3 "Modelo conceitual")<br>
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/UML.png "Diagrama de classes")
![Arquivo asta do diagrama de classes](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/appDoacoes.asta "Diagrama de classes")<br>   
        
    
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
        LATITUDE: Campo que armazena a latitude da localização de cada ONG usuária do sistema.<br>
        LONGITUDE: Campo que armazena o longitude da localização de cada ONG usuária do sistema.<br>
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
        LATITUDE: Campo que armazena a latitude do local onde a doação será concretizada.<br>
        LONGITUDE: Campo que armazena a longitude do local onde a doação será concretizada.<br>
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

#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    Cria um usuário, pesquisa por uma doação e pesquisa por uma necessidade.
    
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    Usuário, ONG e item_doação
    
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    Usuário, ONG, item_doação, necessidade e requisita_requisição_doação.
    

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/logico.png "Modelo Conceitual")
![Arquivo brM3 com modelo lógico do sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/logicobrM3 "Modelo físico")<br>

### 7	MODELO FÍSICO<br>
![Arquivo SQL com modelo físico do sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/fisico_atualizadov3.sql "Modelo físico")<br>
        
>## Marco de Entrega 01 em: 07/10/2019<br>
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Arquivo SQL com inserts](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/inserts.sql "Inserts aplicados")<br>


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
Link do Colab: https://colab.research.google.com/drive/1dCpHkfv8w8GYIwHhmsopFEzdC2vvJ6_o#scrollTo=lpJY9Sk3GGhc
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SELECT * FROM PESSOA;<br>
![9.1-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-1.PNG "Tabela Pessoa")<br>

SELECT * FROM AVALIACAO_USUARIO;<br>
![9.1-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-2.PNG "Tabela Avaliação Usuário")<br>

SELECT * FROM ONG;<br>
![9.1-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-3.PNG "Tabela Ong")<br>

SELECT * FROM CATEGORIA;<br>
![9.1-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-4.PNG "Tabela Categoria")<br>

SELECT * FROM ITEM_DOACAO;<br>
![9.1-5](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-5.PNG "Tabela Item Doação")<br>

SELECT * FROM FOTO;<br>
![9.1-6](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-6.PNG "Tabela Foto")<br>

SELECT * FROM STATUS_REQUISICAO;<br>
![9.1-7](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-7.PNG "Tabela Status Requisição")<br>

SELECT * FROM ESTADO_ITEM;<br>
![9.1-8](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-8.PNG "Tabela Estado Item")<br>

SELECT * FROM STATUS_REQ_NECESSIDADE;<br>
![9.1-9](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-9.PNG "Tabela Status Req Necessidade")<br>

SELECT * FROM MENSAGEM_REQUISICAO;<br>
![9.1-10](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-10.PNG "Tabela Mensagem Requisição")<br>

SELECT * FROM STATUS_MENSAGEM;<br>
![9.1-11](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-11.PNG "Tabela Status Mensagem")<br>

SELECT * FROM STATUS_MENSAGEM_NEC;<br>
![9.1-12](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-12.PNG "Tabela Status Mensagem Nec")<br>

SELECT * FROM NECESSIDADE;<br>
![9.1-13](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-13.PNG "Tabela Necessidade")<br>

SELECT * FROM FOTO_NECESSIDADE;<br>
![9.1-14](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-14.PNG "Tabela Foto Necessidade")<br>

SELECT * FROM MENSAGEM_NECESSIDADE;<br>
![9.1-15](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-15.PNG "Tabela Mensagem Necessidade")<br>

SELECT * FROM REQUISITA_DOACAO_REQUISITA;<br>
![9.1-16](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-16.PNG "Tabela Requisita Doação Requisita")<br>

SELECT * FROM INTO REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE;<br>
![9.1-17](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-17.PNG "Tabela Requisição Ajuda Supre Pessoa Ong Necessidade")<br>

SELECT * FROM EXPOE_PESSOA_NECESSIDADE_ONG;<br>
![9.1-18](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-18.PNG "Tabela Expoe Pessoa Necessidade")<br>

SELECT * FROM POSSIBILITA;<br>
![9.1-19](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-19.PNG "Tabela Possibilita")<br>

SELECT * FROM POSSIBILITA_AJUDA;<br>
![9.1-20](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-20.PNG "Tabela Possibilita Ajuda")<br>

SELECT * FROM ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG;<br>
![9.1-21](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.1-21.PNG "Tabela Envia Pessoa Mensagem Necessidade Ong")<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

SELECT * FROM ong WHERE cidade = 'Cariacica';
![9.2-1](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.2-1.PNG)<br>

SELECT * FROM avaliacao_usuario WHERE nota = 5;
![9.2-2](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.2-2.PNG)<br>

SELECT * FROM categoria WHERE valor_medio < 200;
![9.2-3](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.2-3.PNG)<br>

SELECT * FROM pessoa WHERE saldo > 500;
![9.2-4](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/9.2-4.PNG)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
![Arquivo sql atualizações e exclusões](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/atualiza_deleta_dados.sql)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        
            print("Junção de todas as tabelas do banco")
            cur.execute("""SELECT PESSOA.ID_PESSOA AS "ID DO USUÁRIO",
            PESSOA.NOME,
            PESSOA.CPF,
            AVALIACAO_USUARIO.ID_AVALIACAO AS "ID DE AVALIAÇÃO",
            AVALIACAO_USUARIO.NOTA,
            AVALIACAO_USUARIO.COMENTARIO,
            ITEM_DOACAO.ID_DOACAO AS "ID DA DOAÇÃO",
            ITEM_DOACAO.TITULO,
            CATEGORIA.NOME AS "CATEGORIA DA DOAÇÃO",
            FOTO.CAMINHO AS "CAMINHO DA FOTO",
            ESTADO_ITEM.NOME AS "ESTADO DE CONSERVAÇÃO",
            STATUS_REQUISICAO.NOME AS "STATUS DA REQUISIÇÃO",
            MENSAGEM_REQUISICAO.CONTEUDO AS "MENSAGEM",
            STATUS_MENSAGEM.NOME AS "STATUS DA MENSAGEM",
            NECESSIDADE.TITULO,
            FOTO_NECESSIDADE.CAMINHO AS "CAMINHO DA FOTO NECESSIDADE",
            CATEGORIA_NECESSIDADE.NOME AS "CATEGORIA DA NECESSIDADE",
            MENSAGEM_NECESSIDADE.CONTEUDO AS "MENSAGEM DA NECESSIDADE",
            STATUS_MENSAGEM_NEC.NOME AS "STATUS DA MENSAGEM DA NECESSIDADE",
            STATUS_REQ_NECESSIDADE "AS STATUS DA REQUISIÇÃO DA NECESSIDADE"
            FROM PESSOA 
            INNER JOIN AVALIACAO_USUARIO ON(PESSOA.ID_PESSOA = AVALIACAO_USUARIO.FK_PESSOA_ID_PESSOA_)
            INNER JOIN ITEM_DOACAO ON(PESSOA.ID_PESSOA = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)
            INNER JOIN CATEGORIA ON(ITEM_DOACAO.FK_CATEGORIA_ID_CATEGORIA = CATEGORIA.ID_CATEGORIA)
            INNER JOIN FOTO ON(ITEM_DOACAO.ID_DOACAO = FOTO.FK_ITEM_DOACAO_ID_DOACAO)
            INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)
            INNER JOIN REQUISITA_DOACAO_REQUISITA ON(PESSOA.ID_PESSOA = REQUISITA_DOACAO_REQUISITA.FK_PESSOA_ID_PESSOA)
            INNER JOIN STATUS_REQUISICAO ON(REQUISITA_DOACAO_REQUISITA.FK_STATUS_REQUISICAO_ID_STATUS = STATUS_REQUISICAO.ID_STATUS)
            INNER JOIN POSSIBILITA ON(REQUISITA_DOACAO_REQUISITA.ID = POSSIBILITA.FK_REQUISITA_DOACAO_REQUISITA_ID)
            INNER JOIN MENSAGEM_REQUISICAO ON(POSSIBILITA.FK_MENSAGEM_REQUISICAO_ID_MENSAGEM = MENSAGEM_REQUISICAO.ID_MENSAGEM AND PESSOA.ID_PESSOA = MENSAGEM_REQUISICAO.FK_PESSOA_ID_PESSOA)
            INNER JOIN STATUS_MENSAGEM ON(MENSAGEM_REQUISICAO.FK_STATUS_MENSAGEM_ID_MENSAGEM_STATUS = STATUS_MENSAGEM.ID_MENSAGEM_STATUS)
            INNER JOIN EXPOE_PESSOA_NECESSIDADE_ONG ON (PESSOA.ID_PESSOA = EXPOE_PESSOA_NECESSIDADE_ONG.FK_PESSOA_ID_PESSOA)
            INNER JOIN NECESSIDADE ON(EXPOE_PESSOA_NECESSIDADE_ONG.FK_NECESSIDADE_ID_NECESSIDADE = NECESSIDADE.ID_NECESSIDADE)
            INNER JOIN FOTO_NECESSIDADE ON(NECESSIDADE.ID_NECESSIDADE = FOTO_NECESSIDADE.FK_NECESSIDADE_ID_NECESSIDADE)
            INNER JOIN CATEGORIA_NECESSIDADE ON(NECESSIDADE.FK_CATEGORIA_NECESSIDADE_ID_CATEGORIA = CATEGORIA_NECESSIDADE.ID_CATEGORIA)
            INNER JOIN REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE ON(PESSOA.ID_PESSOA = REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE.FK_PESSOA_ID_PESSOA)
            INNER JOIN STATUS_REQ_NECESSIDADE ON(REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE.FK_STATUS_REQ_NECESSIDADE_ID_MENSAGEM_STATUS = STATUS_REQ_NECESSIDADE.ID_MENSAGEM_STATUS)
            INNER JOIN POSSIBILITA_AJUDA ON(REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE.ID = POSSIBILITA_AJUDA.FK_REQUISICAO_AJUDA_SUPRE_PESSOA_ONG_NECESSIDADE_ID)
            INNER JOIN ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG ON (PESSOA.ID_PESSOA = ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG.FK_PESSOA_ID_PESSOA)
            INNER JOIN MENSAGEM_NECESSIDADE ON(POSSIBILITA_AJUDA.FK_MENSAGEM_NECESSIDADE_ID_MENSAGEM = MENSAGEM_NECESSIDADE.ID_MENSAGEM AND ENVIA_PESSOA_MENSAGEM_NECESSIDADE_ONG.FK_MENSAGEM_NECESSIDADE_ID_MENSAGEM = MENSAGEM_NECESSIDADE.ID_MENSAGEM)
            INNER JOIN STATUS_MENSAGEM_NEC ON(MENSAGEM_NECESSIDADE.FK_STATUS_MENSAGEM_NEC_ID_STATUS = STATUS_MENSAGEM_NEC.ID_STATUS)
            GROUP BY PESSOA.ID_PESSOA,
            AVALIACAO_USUARIO.ID_AVALIACAO,
            ITEM_DOACAO.ID_DOACAO,
            CATEGORIA.ID_CATEGORIA,
            ESTADO_ITEM.ID_ESTADO,
            FOTO.ID_FOTO,
            MENSAGEM_REQUISICAO.ID_MENSAGEM,
            STATUS_REQUISICAO.ID_STATUS,
            STATUS_MENSAGEM.ID_MENSAGEM_STATUS,
            NECESSIDADE.ID_NECESSIDADE,
            FOTO_NECESSIDADE.ID_FOTO,
            CATEGORIA_NECESSIDADE.ID_CATEGORIA,
            MENSAGEM_NECESSIDADE.ID_MENSAGEM,
            STATUS_MENSAGEM_NEC.ID_STATUS,
            STATUS_REQ_NECESSIDADE.ID_MENSAGEM_STATUS
            ORDER BY PESSOA.ID_PESSOA""")
            dados = cur.fetchall()
            for i in dados:
              print(i)
            
            Junção de todas as tabelas do banco
            (1, 'Jos Ricardo', 93596493099, 6, 5, 'Muito excelente! :)', 9, 'Doo pastas de dente', 'Utenslios', 'C:\\d\\9\\image.png', 'Novo', 'Em andamento', 'Eae meu bom', 'Recebida', 'Preciso de alimentos', 'C:\\n\\1\\image.png', 'Alimenticios', 'Koe', 'Recebida', '(1,"Em andamento")')
            (2, 'Mrcia Riveiro', 6945386040, 7, 5, 'Muito excelente! :)', 3, 'Mesa de ao enferrujada', 'Mveis', 'C:\\d\\3\\image.png', 'Quebrado', 'Em andamento', 'Boa noite senhor', 'Recebida', 'Preciso de cadeiras', 'C:\\n\\4\\image.png', 'Mveis', 'Bom jovem?', 'Recebida', '(1,"Em andamento")')
            (2, 'Mrcia Riveiro', 6945386040, 7, 5, 'Muito excelente! :)', 12, 'Estou doando tapete velho', 'Utilitrios', 'C:\\d\\12\\image.png', 'Quebrado', 'Em andamento', 'Boa noite senhor', 'Recebida', 'Preciso de cadeiras', 'C:\\n\\4\\image.png', 'Mveis', 'Bom jovem?', 'Recebida', '(1,"Em andamento")')
  
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
        
            print("Reputação de uma pessoa")
            cur.execute("""SELECT PESSOA.ID_PESSOA AS "ID DO USUÁRIO",
            PESSOA.NOME,
            AVG(NOTA) AS "MEDIA"
            FROM PESSOA
            INNER JOIN AVALIACAO_USUARIO ON(PESSOA.ID_PESSOA = AVALIACAO_USUARIO.FK_PESSOA_ID_PESSOA_)
            GROUP BY PESSOA.ID_PESSOA""")
            dados = cur.fetchall()
            for i in dados:
              print(i,"\n")
              
            Reputação de uma pessoa
            (2, 'Mrcia Riveiro', Decimal('5.0000000000000000')) 

            (7, 'Tenrio Silva', Decimal('5.0000000000000000')) 

            (1, 'Jos Ricardo', Decimal('5.0000000000000000')) 

            (5, 'Marilda Teixeira', Decimal('4.6000000000000000')) 
            
            print("Pessoas que doam e suas doações")
            cur.execute("""SELECT PESSOA.ID_PESSOA AS "ID DO USUÁRIO",
            PESSOA.NOME,
            ITEM_DOACAO.ID_DOACAO AS "ID DA DOAÇÃO",
            ITEM_DOACAO.TITULO,
            FOTO.CAMINHO,
            CATEGORIA.NOME,
            CATEGORIA.VALOR_MEDIO,
            ESTADO_ITEM.NOME,
            ITEM_DOACAO.RUA,
            ITEM_DOACAO.BAIRRO,
            ITEM_DOACAO.CIDADE,
            ITEM_DOACAO.ESTADO
            FROM PESSOA
            INNER JOIN ITEM_DOACAO ON(PESSOA.ID_PESSOA = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)
            INNER JOIN CATEGORIA ON(ITEM_DOACAO.FK_CATEGORIA_ID_CATEGORIA = CATEGORIA.ID_CATEGORIA)
            INNER JOIN FOTO ON(ITEM_DOACAO.ID_DOACAO = FOTO.FK_ITEM_DOACAO_ID_DOACAO)
            INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)
            GROUP BY PESSOA.ID_PESSOA,ITEM_DOACAO.ID_DOACAO,FOTO.ID_FOTO,CATEGORIA.ID_CATEGORIA,ESTADO_ITEM.ID_ESTADO
            ORDER BY PESSOA.ID_PESSOA""")
            dados = cur.fetchall()
            for i in dados:
              print(i,"\n")
              
            Pessoas que doam e suas doações
            (1, 'Jos Ricardo', 9, 'Doo pastas de dente', 'C:\\d\\9\\image.png', 'Utenslios', 100, 'Novo', 'Avenida Vitria', 'Centro', 'Linhares', 'ES') 

            (2, 'Mrcia Riveiro', 3, 'Mesa de ao enferrujada', 'C:\\d\\3\\image.png', 'Mveis', 500, 'Quebrado', 'Rua Guimares Jnior', 'Jardim Limoeiro', 'Serra', 'ES') 

            (2, 'Mrcia Riveiro', 12, 'Estou doando tapete velho', 'C:\\d\\12\\image.png', 'Utilitrios', 100, 'Quebrado', 'Rua Sandlio Abaurre', 'Bairro de Lourdes', 'Vitria', 'ES') 

            (3, 'Carlos augusto', 2, 'Doo tnis velho em bom estado', 'C:\\d\\2\\image.png', 'Vestimentas', 250, 'Usado', 'Rua Presidente Getlio Vargas', 'Ftima', 'Aracruz', 'ES') 

            (4, 'Heberson Machado', 7, 'Lousa digital quebrada', 'C:\\d\\7\\image.png', 'Eletrnicos', 350, 'Usado', 'Avenida Doutor Olvio Lira', 'Praia da Costa', 'Vila Velha', 'ES') 

            (5, 'Marilda Teixeira', 6, 'Mochila usada', 'C:\\d\\6\\image.png', 'Utilitrios', 100, 'Usado', 'Rua Belas Artes', 'Aribiri', 'Vila Velha', 'ES') 

            (5, 'Marilda Teixeira', 13, 'Estou doando leite lacrado', 'C:\\d\\13\\image.png', 'Alimenticios', 150, 'Novo', 'Rua Elizana Casteglioni', 'Itapina', 'Colatina', 'ES') 

            (6, 'Felipe Gonalves', 11, 'Doo cesta de frutas', 'C:\\d\\11\\image.png', 'Alimenticios', 150, 'Novo', 'Rua Rio de Janeiro', 'Parque Residencial de Tubaro', 'Serra', 'ES') 

            (8, 'Ronaldo Nandes', 10, 'Sapatos velhos', 'C:\\d\\10\\image.png', 'Vestimentas', 250, 'Usado', 'Avenida Manoel Bermudes', 'Jardim Tropical', 'Serra', 'ES') 

            (9, 'Renato Oliveira', 17, 'Doao de ternos', 'C:\\d\\17\\image.png', 'Vestimentas', 250, 'Usado', 'Travessa das Crianas III', 'Carapina Grande', 'Serra', 'ES') 

            (11, 'Vinicius Marques', 15, 'Estou doando mouse com um lado funcionando', 'C:\\d\\15\\image.png', 'Eletrnicos', 350, 'Quebrado', 'Rua Caboclinho', 'Pontal do Ipiranga', 'Linhares', 'ES') 

            (12, 'Taylor Schuitz', 14, 'Doo estojos', 'C:\\d\\14\\image.png', 'Utilitrios', 100, 'Usado', 'Rua Santa Leopoldina', 'Jardim Carapina', 'Serra', 'ES') 

            (13, 'Mnica Ramos', 1, 'Notebook Acer usado em perfeito estado', 'C:\\d\\1\\image.png', 'Eletrnicos', 350, 'Usado', 'Rua Marlin Azul', 'Estrelinha', 'Vitria', 'ES') 

            (13, 'Mnica Ramos', 18, 'Estou doando Game Boy antigo', 'C:\\d\\18\\image.png', 'Brinquedos', 50, 'Usado', 'Rua Boapaba', 'Rio Marinho', 'Vila Velha', 'ES') 

            (13, 'Mnica Ramos', 20, 'Notebook Positivo usado em perfeito estado', 'C:\\d\\20\\image.png', 'Eletrnicos', 350, 'Usado', 'Rua Marlin Azul', 'Estrelinha', 'Vitria', 'ES') 

            (17, 'Cleiton Alves', 5, 'Doo fogo velho a lenha', 'C:\\d\\5\\image.png', 'Mveis', 500, 'Usado', 'Rua dos Gaturanos', 'Porto Canoa', 'Serra', 'ES') 

            (18, 'Marcelo de Jesus', 4, 'Estou doando roupas velhas de inverno', 'C:\\d\\4\\image.png', 'Vestimentas', 250, 'Usado', 'Praa Waldir Furtado Amorim', 'Waldir Furtado de Amorim', 'Cachoeiro de Itapemirim', 'ES') 

            (18, 'Marcelo de Jesus', 16, 'Estou doando Fusca Velho', 'C:\\d\\16\\image.png', 'Automotivos', 1000, 'Quebrado', 'Rua Olavo Bilac', 'Morada da Barra', 'Vila Velha', 'ES') 

            (20, 'Joseph Brendam', 8, 'Capinha de iPhone', 'C:\\d\\8\\image.png', 'Utilitrios', 100, 'Usado', 'Escadaria Argemiro de Andrade', 'Zumbi', 'Cachoeiro do Itapemirim', 'ES') 

            (20, 'Joseph Brendam', 19, 'Doo Barbie careca', 'C:\\d\\19\\image.png', 'Brinquedos', 50, 'Quebrado', 'Rua Elder Azevedo', 'Povoao', 'Linhares', 'ES') 
            
            print("Ongs com necessidades e suas necessidades")
            cur.execute("""SELECT ONG.ID_ONG,
            ONG.NOME,
            NECESSIDADE.ID_NECESSIDADE,
            NECESSIDADE.TITULO,
            CATEGORIA_NECESSIDADE.NOME,
            CATEGORIA_NECESSIDADE.VALOR_MEDIO,
            FOTO_NECESSIDADE.CAMINHO,
            NECESSIDADE.RUA,
            NECESSIDADE.BAIRRO,
            NECESSIDADE.CIDADE,
            NECESSIDADE.ESTADO 
            FROM ONG
            INNER JOIN EXPOE_PESSOA_NECESSIDADE_ONG ON (ONG.ID_ONG = EXPOE_PESSOA_NECESSIDADE_ONG.FK_ONG_ID_ONG)
            INNER JOIN NECESSIDADE ON(EXPOE_PESSOA_NECESSIDADE_ONG.FK_NECESSIDADE_ID_NECESSIDADE = NECESSIDADE.ID_NECESSIDADE)
            INNER JOIN FOTO_NECESSIDADE ON(NECESSIDADE.ID_NECESSIDADE = FOTO_NECESSIDADE.FK_NECESSIDADE_ID_NECESSIDADE)
            INNER JOIN CATEGORIA_NECESSIDADE ON(NECESSIDADE.FK_CATEGORIA_NECESSIDADE_ID_CATEGORIA = CATEGORIA_NECESSIDADE.ID_CATEGORIA)
            GROUP BY ONG.ID_ONG, NECESSIDADE.ID_NECESSIDADE, FOTO_NECESSIDADE.ID_FOTO, CATEGORIA_NECESSIDADE.ID_CATEGORIA
            ORDER BY ONG.ID_ONG""")
            dados = cur.fetchall()
            for i in dados:
              print(i,"\n")
              
            Ongs com necessidades e suas necessidades
            (1, 'Fundao Pedro Nolasco', 2, 'Necessitamos de roupas', 'Vestimentas', 250, 'C:\\n\\2\\image.png', 'Rua Graviola', 'Cidade Pomar', 'Serra', 'ES') 

            (2, 'Projeto Leitura e Ensino', 3, 'Estamos sem alimentos', 'Alimenticios', 150, 'C:\\n\\3\\image.png', 'Rua Graviola', 'Cidade Pomar', 'Serra', 'ES') 

            (3, 'Clube Esportivo para Jovens', 6, 'Necessitamos equipamentos esportivos', 'Utilitrios', 100, 'C:\\n\\6\\image.png', 'Rua Paulo Rodrigues', 'Tucum', 'Cariacica', 'ES') 

            (4, 'Fundao Alberto Seixas', 7, 'Precisamos de livros', 'Utilitrios', 100, 'C:\\n\\7\\image.png', 'Rua Hannibal Barca', 'Praia de Carapebus', 'Serra', 'ES') 

            (5, 'Projeto Vida Digna', 8, 'Procura-se roupas de inverno', 'Vestimentas', 250, 'C:\\n\\8\\image.png', 'Rua Cndido Portinari', 'das Laranjeiras', 'Serra', 'ES') 

            (6, 'Casa de Recuperao Naam', 15, 'Precisamos de rao para nossos cachorros', 'Alimenticios', 150, 'C:\\n\\15\\image.png', 'Rua Joo Vitali', 'Fazenda Vitali', 'Colatina', 'ES') 

            (7, 'Instituio Manasss', 16, 'Necessitamos de po para o caf da manh', 'Alimenticios', 150, 'C:\\n\\16\\image.png', 'Rua Tina Mazzelli de Almeida', 'Jardim Santa Rosa', 'Guarapari', 'ES') 

            (8, 'Luta pelo Futuro', 17, 'Precisamos de fraudas', 'Utenslios', 100, 'C:\\n\\17\\image.png', 'Avenida Antnio Gil Veloso', 'Itapu', 'Vila Velha', 'ES') 

            (9, 'Proteo a Mata Atlntica', 18, 'Precisamos de remdios', 'Utenslios', 100, 'C:\\n\\18\\image.png', 'Rua Pedro Corra', 'Inhanguet', 'Vitria', 'ES') 

            (10, 'Direitos dos Surdos', 19, 'Preciso de uma prtese', 'Utilitrios', 100, 'C:\\n\\19\\image.png', 'Avenida Brasil', 'So Diogo II', 'Serra', 'ES') 

            (11, 'Aiesec em Vitria', 20, 'Precisamos de sementes', 'Alimenticios', 150, 'C:\\n\\20\\image.png', 'Rua Geraldo Ribeiro', 'Pitanga', 'Serra', 'ES') 
           
            print("Pessoas com necessidades e suas necessidades")
            cur.execute("""SELECT PESSOA.ID_PESSOA,
            PESSOA.NOME,
            NECESSIDADE.ID_NECESSIDADE,
            NECESSIDADE.TITULO,
            CATEGORIA_NECESSIDADE.NOME,
            CATEGORIA_NECESSIDADE.VALOR_MEDIO,
            FOTO_NECESSIDADE.CAMINHO,
            NECESSIDADE.RUA,
            NECESSIDADE.BAIRRO,
            NECESSIDADE.CIDADE,
            NECESSIDADE.ESTADO 
            FROM PESSOA
            INNER JOIN EXPOE_PESSOA_NECESSIDADE_ONG ON (PESSOA.ID_PESSOA = EXPOE_PESSOA_NECESSIDADE_ONG.FK_PESSOA_ID_PESSOA)
            INNER JOIN NECESSIDADE ON(EXPOE_PESSOA_NECESSIDADE_ONG.FK_NECESSIDADE_ID_NECESSIDADE = NECESSIDADE.ID_NECESSIDADE)
            INNER JOIN FOTO_NECESSIDADE ON(NECESSIDADE.ID_NECESSIDADE = FOTO_NECESSIDADE.FK_NECESSIDADE_ID_NECESSIDADE)
            INNER JOIN CATEGORIA_NECESSIDADE ON(NECESSIDADE.FK_CATEGORIA_NECESSIDADE_ID_CATEGORIA = CATEGORIA_NECESSIDADE.ID_CATEGORIA)
            GROUP BY PESSOA.ID_PESSOA, NECESSIDADE.ID_NECESSIDADE, FOTO_NECESSIDADE.ID_FOTO, CATEGORIA_NECESSIDADE.ID_CATEGORIA
            ORDER BY PESSOA.ID_PESSOA""")
            dados = cur.fetchall()
            for i in dados:
              print(i,"\n")
              
            Pessoas com necessidades e suas necessidades
            (1, 'Jos Ricardo', 1, 'Preciso de alimentos', 'Alimenticios', 150, 'C:\\n\\1\\image.png', 'Rua Joo Fregona', 'Interlagos', 'Linhares', 'ES') 

            (2, 'Mrcia Riveiro', 4, 'Preciso de cadeiras', 'Mveis', 500, 'C:\\n\\4\\image.png', 'Rua So Joo Del Rei', 'Novo Horizonte', 'Cariacica', 'ES') 

            (3, 'Carlos augusto', 5, 'Estamos sem pasta de dente', 'Utenslios', 100, 'C:\\n\\5\\image.png', 'Rua Cedro', 'Serra Dourada I', 'Serra', 'ES') 

            (7, 'Tenrio Silva', 9, 'Necessito de mochila', 'Utilitrios', 100, 'C:\\n\\9\\image.png', 'Praa Joo Clmaco 10', 'Centro', 'Vitria', 'ES') 

            (9, 'Renato Oliveira', 10, 'Busco sof', 'Mveis', 500, 'C:\\n\\10\\image.png', 'Rua Grana', 'Vila Nova de Colares', 'Serra', 'ES') 

            (11, 'Vinicius Marques', 11, 'Preciso de fraudas', 'Utenslios', 100, 'C:\\n\\11\\image.png', 'Rua Manoel Laurentino', 'Itacib', 'Cariacica', 'ES') 

            (13, 'Mnica Ramos', 13, 'Preciso de produtos de limpeza', 'Utenslios', 100, 'C:\\n\\13\\image.png', 'Rua Anjico', 'Colina de Laranjeiras', 'Serra', 'ES') 

            (17, 'Cleiton Alves', 12, 'Necessito de cesta bsica', 'Alimenticios', 150, 'C:\\n\\12\\image.png', 'Alameda Norte', 'Alphaville Jacuhy', 'Serra', 'ES') 

            (18, 'Marcelo de Jesus', 14, 'Preciso de papel higinico', 'Utenslios', 100, 'C:\\n\\14\\image.png', 'Travessa Annor da Silva', 'Residencial Coqueiral', 'Serra', 'ES')
            
            print("Pessoas e suas requisições de doação")
            cur.execute("""SELECT PESSOA.ID_PESSOA,
            PESSOA.NOME,
            REQUISITA_DOACAO_REQUISITA.ID,
            STATUS_REQUISICAO.NOME,
            ITEM_DOACAO.TITULO,
            CATEGORIA.NOME,
            CATEGORIA.VALOR_MEDIO,
            ITEM_DOACAO.RUA,
            ITEM_DOACAO.BAIRRO,
            ITEM_DOACAO.CIDADE,
            ITEM_DOACAO.ESTADO,
            ESTADO_ITEM.NOME
            FROM PESSOA
            INNER JOIN REQUISITA_DOACAO_REQUISITA ON(PESSOA.ID_PESSOA = REQUISITA_DOACAO_REQUISITA.FK_PESSOA_ID_PESSOA)
            INNER JOIN STATUS_REQUISICAO ON(REQUISITA_DOACAO_REQUISITA.FK_STATUS_REQUISICAO_ID_STATUS = STATUS_REQUISICAO.ID_STATUS)
            INNER JOIN ITEM_DOACAO ON(REQUISITA_DOACAO_REQUISITA.FK_ITEM_DOACAO_ID_DOACAO = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)
            INNER JOIN CATEGORIA ON(ITEM_DOACAO.FK_CATEGORIA_ID_CATEGORIA = CATEGORIA.ID_CATEGORIA)
            INNER JOIN FOTO ON(ITEM_DOACAO.ID_DOACAO = FOTO.FK_ITEM_DOACAO_ID_DOACAO)
            INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)
            GROUP BY PESSOA.ID_PESSOA, ITEM_DOACAO.ID_DOACAO, FOTO.ID_FOTO, CATEGORIA.ID_CATEGORIA, ESTADO_ITEM.ID_ESTADO, REQUISITA_DOACAO_REQUISITA.ID, STATUS_REQUISICAO.ID_STATUS
            ORDER BY PESSOA.ID_PESSOA""")
            dados = cur.fetchall()
            for i in dados:
              print(i,"\n")
              
            Pessoas e suas requisições de doação
            (2, 'Mrcia Riveiro', 1, 'Em andamento', 'Mochila usada', 'Utilitrios', 100, 'Rua Belas Artes', 'Aribiri', 'Vila Velha', 'ES', 'Usado') 

            (2, 'Mrcia Riveiro', 7, 'Em andamento', 'Lousa digital quebrada', 'Eletrnicos', 350, 'Avenida Doutor Olvio Lira', 'Praia da Costa', 'Vila Velha', 'ES', 'Usado') 

            (2, 'Mrcia Riveiro', 1, 'Em andamento', 'Estou doando leite lacrado', 'Alimenticios', 150, 'Rua Elizana Casteglioni', 'Itapina', 'Colatina', 'ES', 'Novo') 

            (5, 'Marilda Teixeira', 5, 'Finalizada', 'Doo pastas de dente', 'Utenslios', 100, 'Avenida Vitria', 'Centro', 'Linhares', 'ES', 'Novo') 

            (7, 'Tenrio Silva', 8, 'Em andamento', 'Mesa de ao enferrujada', 'Mveis', 500, 'Rua Guimares Jnior', 'Jardim Limoeiro', 'Serra', 'ES', 'Quebrado') 

            (7, 'Tenrio Silva', 8, 'Em andamento', 'Estou doando tapete velho', 'Utilitrios', 100, 'Rua Sandlio Abaurre', 'Bairro de Lourdes', 'Vitria', 'ES', 'Quebrado') 

            (9, 'Renato Oliveira', 4, 'Em andamento', 'Doo tnis velho em bom estado', 'Vestimentas', 250, 'Rua Presidente Getlio Vargas', 'Ftima', 'Aracruz', 'ES', 'Usado') 
            
            print("Pessoas e suas mensagens enviadas para doações")
            cur.execute("""SELECT PESSOA.ID_PESSOA,
            PESSOA.NOME,
            ITEM_DOACAO.TITULO,
            MENSAGEM_REQUISICAO.ID_MENSAGEM,
            MENSAGEM_REQUISICAO.CONTEUDO,
            MENSAGEM_REQUISICAO.DATA1,
            MENSAGEM_REQUISICAO.HORA,
            STATUS_MENSAGEM.NOME
            FROM PESSOA
            INNER JOIN REQUISITA_DOACAO_REQUISITA ON(PESSOA.ID_PESSOA = REQUISITA_DOACAO_REQUISITA.FK_PESSOA_ID_PESSOA)
            INNER JOIN STATUS_REQUISICAO ON(REQUISITA_DOACAO_REQUISITA.FK_STATUS_REQUISICAO_ID_STATUS = STATUS_REQUISICAO.ID_STATUS)
            INNER JOIN ITEM_DOACAO ON(REQUISITA_DOACAO_REQUISITA.FK_ITEM_DOACAO_ID_DOACAO = ITEM_DOACAO.FK_PESSOA_ID_PESSOA)
            INNER JOIN POSSIBILITA ON(REQUISITA_DOACAO_REQUISITA.ID = POSSIBILITA.FK_REQUISITA_DOACAO_REQUISITA_ID)
            INNER JOIN MENSAGEM_REQUISICAO ON(POSSIBILITA.FK_MENSAGEM_REQUISICAO_ID_MENSAGEM = MENSAGEM_REQUISICAO.ID_MENSAGEM AND PESSOA.ID_PESSOA = MENSAGEM_REQUISICAO.FK_PESSOA_ID_PESSOA)
            INNER JOIN STATUS_MENSAGEM ON(MENSAGEM_REQUISICAO.FK_STATUS_MENSAGEM_ID_MENSAGEM_STATUS = STATUS_MENSAGEM.ID_MENSAGEM_STATUS)
            INNER JOIN ESTADO_ITEM ON(ITEM_DOACAO.FK_ESTADO_ITEM_ID_ESTADO = ESTADO_ITEM.ID_ESTADO)
            GROUP BY PESSOA.ID_PESSOA, ITEM_DOACAO.ID_DOACAO,REQUISITA_DOACAO_REQUISITA.ID, STATUS_MENSAGEM.ID_MENSAGEM_STATUS, MENSAGEM_REQUISICAO.ID_MENSAGEM
            ORDER BY MENSAGEM_REQUISICAO.ID_MENSAGEM
            """)
            dados = cur.fetchall()
            for i in dados:
              print(i,"\n")
              
            Pessoas e suas mensagens enviadas para doações
            (5, 'Marilda Teixeira', 'Doo pastas de dente', 1, 'Ol, boa noite. Gostaria de saber qual as especificaes do computador.', datetime.date(2019, 10, 18), datetime.time(20, 19), 'Visualizada') 

            (5, 'Marilda Teixeira', 'Doo pastas de dente', 3, 'Entendi... Estou interessado, podemos nos encontrar no endereo ou tem mais algum na espera?', datetime.date(2019, 10, 18), datetime.time(20, 22), 'Visualizada') 

            (5, 'Marilda Teixeira', 'Doo pastas de dente', 5, 'Muito obrigado, senhor. Farei bom uso do seu computador', datetime.date(2019, 10, 18), datetime.time(20, 25), 'Visualizada') 

            (2, 'Mrcia Riveiro', 'Lousa digital quebrada', 7, 'Boa noite senhor', datetime.date(2019, 10, 19), datetime.time(21, 25), 'Recebida') 

            (7, 'Tenrio Silva', 'Mesa de ao enferrujada', 8, 'Opa, beleza?', datetime.date(2019, 10, 19), datetime.time(22, 25), 'Recebida') 

            (7, 'Tenrio Silva', 'Estou doando tapete velho', 8, 'Opa, beleza?', datetime.date(2019, 10, 19), datetime.time(22, 25), 'Recebida') 

>## Marco de Entrega 02 em: 21/10/2019<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>


#### 9.11 Relatórios e Gráficos 
    a)análises e resultados provenientes do banco de dados

>## Marco de Entrega 03 em:<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
#### a) Pontos Chave do MINI-MUNDO
#### b) 5 principais tabelas/fluxos do sistema
#### c) Perguntas que podem ser respondidads com o sistema proposto
#### d) Modelo Conceitual
#### e) Modelo Lógico
#### f) Relatórios e Gráficos mais importantes para o sistema (mínimo 5) 
#### --> Tempo de apresentação 10 minutos


### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

>## Marco de Entrega 04 em:<br>


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


