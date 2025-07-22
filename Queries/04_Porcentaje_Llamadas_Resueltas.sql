-- Requerimiento 4
-- Objetivo:
-- Mostrar el porcentaje de llamadas resueltas por cada agente sobre el total que gestionó.

SELECT 
    ag.agent_id, 
    ag.agent_name, 
    COUNT(ca.call_id) AS Llamadas_Gestionadas,
    SUM(CASE WHEN resolved = TRUE THEN 1 ELSE 0 END) AS Total_Llamadas_Resueltas,
    ROUND(SUM(CASE WHEN resolved = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Porcentaje_Llamadas_Resueltas
FROM agents ag
JOIN calls ca ON ca.agent_id = ag.agent_id
GROUP BY ag.agent_id, ag.agent_name
ORDER BY Porcentaje_Llamadas_Resueltas DESC;
