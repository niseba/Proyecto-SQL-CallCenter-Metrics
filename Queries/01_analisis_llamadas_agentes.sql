-- Número total de llamadas gestionadas por cada agente
-- Objetivo: 
-- Mostrar cuántas llamadas ha gestionado cada agente, incluyendo los que no han gestionado ninguna. 
-- Ordenar el resultado de mayor a menor número de llamadas.

SELECT ag.agent_id, ag.agent_name, COUNT(ca.call_id) as Número_Llamadas_Gest
FROM agents ag
JOIN calls ca on ca.agent_id=ag.agent_id
GROUP BY ag.agent_id, ag.agent_name
ORDER BY COUNT(ca.call_id) DESC;
