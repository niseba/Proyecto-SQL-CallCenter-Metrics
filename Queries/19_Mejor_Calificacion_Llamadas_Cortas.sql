-- Requerimiento 19
-- Objetivo:
-- Obtener el top 5 de agentes con mejor calificación promedio (rating)
-- de las encuestas posteriores a llamadas que no hayan durado más de 15 minutos.

SELECT ag.agent_id, ag.agent_name,
       ROUND(AVG(su.rating),1) as Promedio_Calificación

FROM surveys su
JOIN calls ca on ca.call_id = su.call_id
JOIN agents ag on ag.agent_id = ca.agent_id
WHERE ca.duration_minutes <= 15
GROUP BY ag.agent_id, ag.agent_name
ORDER BY Promedio_Calificación DESC
LIMIT 5;


