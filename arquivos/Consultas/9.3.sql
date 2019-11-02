SELECT * FROM "public"."item_doacao" WHERE estado = 'ES' AND cidade = 'Vitória' AND bairro != 'Estrelinha';
SELECT * FROM "public"."item_doacao" WHERE estado = 'ES' OR estado = 'RJ';
SELECT * FROM "public"."item_doacao" WHERE estado = 'ES' AND (cidade = 'Vitória' OR  cidade = 'Vila Velha');
SELECT * FROM "public"."requisicao_ajuda_supre_pessoa_ong_necessidade" WHERE mensagem IS NOT null;
SELECT * FROM "public"."pessoa" WHERE saldo >= 50 AND saldo <= 100 ORDER BY saldo;

SELECT * FROM "public"."pessoa" WHERE saldo = 0;
SELECT * FROM "public"."pessoa" WHERE saldo > 500 ORDER BY saldo;
SELECT * FROM "public"."categoria_necessidade" WHERE valor_medio < 350 ORDER BY valor_medio;

ALTER TABLE categoria RENAME nome TO nome_categoria;
ALTER TABLE categoria_necessidade RENAME nome TO nome_categoria;
ALTER TABLE estado_item RENAME nome TO condicao;
