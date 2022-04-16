SELECT distinct usu.usuario as usuario,
CASE 
	WHEN max(ce.data_reproducao) LIKE '2021%' THEN 'Usuário ativo'
	ELSE 'Usuário inativo'
    END as condicao_usuario
FROM SpotifyClone.usuarios as usu
JOIN SpotifyClone.cancoes_escutadas as ce
ON usu.usuario_id = ce.usuario_id
group by usuario
order by usuario;