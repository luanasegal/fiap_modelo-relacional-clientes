-- Comando SQL item a)
SELECT
    categ.cd_categoria,
    categ.ds_categoria,
    prod.cd_produto,
    prod.ds_produto,
    prod.vl_unitario,
    prod.tp_embalagem,
    prod.vl_perc_lucro
FROM
    mc_categoria_prod categ
LEFT JOIN
    mc_produto prod ON categ.cd_categoria = prod.cd_categoria
ORDER BY
    1, 4

-- Comando SQL item b)
SELECT
    cli.nr_cliente,
    cli.nm_cliente,
    cli.ds_email,
    cli.nr_telefone,
    cli.nm_login,
    pf.dt_nascimento,
    TO_CHAR(pf.dt_nascimento, 'day', 'nls_date_language = portuguese') AS dia_da_semana,
    FLOOR(months_between(SYSDATE, pf.dt_nascimento) /12) AS anos_de_vida,
    pf.fl_sexo_biologico,
    pf.nr_cpf
FROM
    mc_cliente cli
INNER JOIN
    mc_cli_fisica pf ON cli.nr_cliente = pf.nr_cliente
ORDER BY
    1, 2

-- Comando SQL item c)
SELECT
    visu.cd_produto,
    prod.ds_produto,
    visu.dt_visualizacao,
    visu.nr_hora_visualizacao
FROM
    mc_sgv_visualizacao_video visu
LEFT JOIN
    mc_produto prod ON visu.cd_produto = prod.cd_produto
ORDER BY
    3 DESC, 4 DESC