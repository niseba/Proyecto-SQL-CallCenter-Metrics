-- Requerimiento 8
-- Objetivo:
-- Mostrar cuántos días únicos ha trabajado cada agente y 
-- el promedio de llamadas gestionadas por día trabajado.

SELECT 
    ag.agent_id, 
    ag.agent_name, 
    COUNT(DISTINCT DATE(ca.call_date)) AS Dias_Unicos_Trabajados, 
    ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT DATE(ca.call_date)), 2) AS Promedio_Llamadas_Por_Dia
FROM agents ag
JOIN calls ca ON ca.agent_id = ag.agent_id
GROUP BY ag.agent_id, ag.agent_name
ORDER BY Promedio_Llamadas_Por_Dia DESC;
