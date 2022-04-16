SELECT art.nome as artista, alb.titulo as album
FROM SpotifyClone.artistas as art
JOIN SpotifyClone.albuns as alb
ON art.artista_id = alb.artista_id
where art.nome = 'Walter Phoenix'
order by album;