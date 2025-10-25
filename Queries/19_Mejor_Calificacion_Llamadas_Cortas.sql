-- Requerimiento 19
-- Objetivo:
-- Obtener el top 5 de agentes con mejor calificación promedio (rating)
-- de las encuestas posteriores a llamadas que no hayan durado más de 15 minutos.

SELECT 
    ag.agent_name, 
    ROUND(AVG(su.rating), 1) AS Promedio_Calificación
FROM agents ag
JOIN calls ca ON ca.agent_id = ag.agent_id
JOIN surveys su ON su.call_id = ca.call_id
WHERE ca.duration_minutes <= 15
GROUP BY ag.agent_name
ORDER BY Promedio_Calificación DESC
LIMIT 5;

