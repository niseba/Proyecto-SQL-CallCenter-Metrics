-- Requerimiento 18  
-- Objetivo:  
-- ¿Cuántos clientes han tenido más llamadas no resueltas que resueltas?

SELECT 
    ag.agent_id, 
    ag.agent_name, 
    SUM(CASE WHEN resolved = 1 THEN 1 ELSE 0 END) AS Llamadas_Resueltas, 
    SUM(CASE WHEN abandoned = 1 THEN 1 ELSE 0 END) AS Llamadas_NO_Resueltas
FROM calls ca
JOIN agents ag ON ag.agent_id = ca.agent_id
GROUP BY ag.agent_id, ag.agent_name
HAVING SUM(CASE WHEN abandoned = 1 THEN 1 ELSE 0 END) > SUM(CASE WHEN resolved = 1 THEN 1 ELSE 0 END);
