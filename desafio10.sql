SELECT ca.titulo as nome, count(ce.cancao_id) as reproducoes
FROM SpotifyClone.cancoes_escutadas as ce
JOIN SpotifyClone.cancoes as ca
ON ce.cancao_id = ca.cancao_id
JOIN SpotifyClone.usuarios as usu
ON ce.usuario_id = usu.usuario_id
JOIN SpotifyClone.planos as pla
ON usu.plano_id = pla.tipo_plano_id
WHERE pla.tipo_plano = 'gratuito' OR pla.tipo_plano = 'pessoal'
group by nome;