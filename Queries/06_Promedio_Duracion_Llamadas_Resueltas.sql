-- Requerimiento 6
-- Objetivo:
-- Calcular el promedio de duración de llamadas por agente,
-- considerando únicamente las llamadas que fueron resueltas.

SELECT 
    ag.agent_id, 
    ag.agent_name, 
    ROUND(AVG(ca.duration_minutes), 1) AS Promedio_Duración_Minutos
FROM calls ca
JOIN agents ag ON ag.agent_id = ca.agent_id
WHERE ca.resolved = TRUE
GROUP BY ag.agent_id, ag.agent_name
ORDER BY Promedio_Duración_Minutos DESC;
