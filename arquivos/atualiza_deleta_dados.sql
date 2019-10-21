print("Exclusão e atualização de email na tabela pessoa")
cur.execute("""UPDATE pessoa SET email = 'joser12@gmail.com' WHERE nome = 'Jos Ricardo';""")
cur.execute("""SELECT * FROM pessoa WHERE nome = 'Jos Ricardo';""")
dados = cur.fetchall()
for i in dados:
  print(i)
  
  print("Exclusão e atualização de numero de contato na tabela ong")
cur.execute("""UPDATE ong SET num_contato = 33589741 WHERE nome = 'Fundao Pedro Nolasco';""")
cur.execute("""SELECT * FROM ong WHERE nome = 'Fundao Pedro Nolasco';""")
dados = cur.fetchall()
for i in dados:
  print(i)
  
  print("Exclusão e atualização de email na tabela ong")
cur.execute("""UPDATE ong SET email = 'projvidadigna@hotmail.com' WHERE nome = 'Projeto Vida Digna';""")
cur.execute("""SELECT * FROM ong WHERE nome = 'Projeto Vida Digna';""")
dados = cur.fetchall()
for i in dados:
  print(i)
