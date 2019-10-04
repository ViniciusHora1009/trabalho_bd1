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
![Arquivo PDF da Documentação de requisitos](https://github.com/ViniciusHora1009/trabalho_bd1/blob/master/arquivos/Documenta%C3%A7%C3%A3o%20de%20Requisitos.pdf)<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/tela_doacao.PNG "Doação")<br>
![Arquivo PDF do Protótipo Balsamiq feito para o sistema](https://github.com/appdoacoes/trabalho_bd1/blob/master/arquivos/Prototipo.pdf "App Doações")<br>
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO        
![Alt text](https://github.com/appdoacoes/trabalho_bd1/blob/master/images/conceitual1-v3.jpg "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    PESSOA: Tabela que armazena informações relativa a pessoa física.<br>
        ID_USUARIO: Campo que armazena o código de identificação de cada pessoa usuária do sistema.<br>
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
        
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.

### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..) 
        
>## Marco de Entrega 01 em: 07/09/2019<br>
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

>## Marco de Entrega 02 em:<br>

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


