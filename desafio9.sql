SELECT count(ce.usuario_id) as quantidade_musicas_no_historico
FROM SpotifyClone.cancoes_escutadas as ce
JOIN SpotifyClone.usuarios as usu
ON usu.usuario_id = ce.usuario_id
where usu.usuario = 'Bill';