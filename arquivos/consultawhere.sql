print("Consulta da tabela ONG onde a cidade é Cariacica")
cur.execute("""SELECT * FROM ong WHERE cidade = 'Cariacica';""")
dados = cur.fetchall()
for i in dados:
  print(i)
  
  print("Consulta da tabela de avaliação onde a nota é 5")
cur.execute("""SELECT * FROM avaliacao_usuario WHERE nota = 5;""")
dados = cur.fetchall()
for i in dados:
  print(i)
  
  print("Consulta da tabela de categoria onde o valor médio é menor que 200")
cur.execute("""SELECT * FROM categoria WHERE valor_medio < 200;""")
dados = cur.fetchall()
for i in dados:
  print(i)
  
  print("Consulta da tabela pessoa onde saldo é maior que 500")
cur.execute("""SELECT * FROM pessoa WHERE saldo > 500;""")
dados = cur.fetchall()
for i in dados:
  print(i)
