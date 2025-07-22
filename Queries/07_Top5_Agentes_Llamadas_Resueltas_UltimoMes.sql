-- Requerimiento 7
-- Objetivo:
-- Mostrar un ranking de los 5 agentes con más llamadas resueltas 
-- durante el último mes registrado en la base de datos.

SELECT 
    ag.agent_name, 
    COUNT(*) AS Llamadas_Resueltas, 
    DATE_FORMAT(MAX(call_date), '%m') AS Ultimo_Mes
FROM calls ca
JOIN agents ag ON ag.agent_id = ca.agent_id
WHERE ca.resolved = 1
GROUP BY ag.agent_name
ORDER BY Llamadas_Resueltas DESC
LIMIT 5;
