SELECT ca.titulo as cancao, COUNT(ce.cancao_id) as reproducoes
FROM SpotifyClone.cancoes as ca
JOIN SpotifyClone.cancoes_escutadas as ce
ON ca.cancao_id = ce.cancao_id
group by ca.titulo
order by reproducoes desc, ca.titulo
limit 2;