SELECT art.nome as artista, alb.titulo as album, count(sa.artista_id) as seguidores
FROM SpotifyClone.artistas as art
JOIN SpotifyClone.albuns as alb
ON art.artista_id = alb.artista_id
JOIN SpotifyClone.seguindo_artistas as sa
ON art.artista_id = sa.artista_id
group by alb.titulo, art.artista_id
order by seguidores desc, artista, album;