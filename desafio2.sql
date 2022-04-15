SELECT count(can.cancao_id) as cancoes, count(distinct art.artista_id) as artistas, count(distinct alb.album_id) as albuns
FROM SpotifyClone.albuns as alb
JOIN SpotifyClone.cancoes as can
ON can.album_id = alb.album_id
JOIN SpotifyClone.artistas as art
ON art.artista_id = alb.artista_id;