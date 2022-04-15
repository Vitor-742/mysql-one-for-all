SELECT usu.usuario as usuario, COUNT(ce.cancao_id) as qtde_musicas_ouvidas, ROUND(sum(ca.duracao_segundos)/60, 2) as total_minutos
FROM SpotifyClone.usuarios as usu
JOIN SpotifyClone.cancoes_escutadas as ce
ON ce.usuario_id = usu.usuario_id
JOIN SpotifyClone.cancoes as ca
ON ca.cancao_id = ce.cancao_id
group by usu.usuario;