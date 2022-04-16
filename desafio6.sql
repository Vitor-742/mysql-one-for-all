SELECT min(pla.valor_plano) as faturamento_minimo,
max(pla.valor_plano) as faturamento_maximo,
round(avg(pla.valor_plano), 2) as faturamento_medio,
sum(pla.valor_plano) as faturamento_total
FROM SpotifyClone.planos as pla
JOIN SpotifyClone.usuarios as usu
ON pla.tipo_plano_id = usu.plano_id;