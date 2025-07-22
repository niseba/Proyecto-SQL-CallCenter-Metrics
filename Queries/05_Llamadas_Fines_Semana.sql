-- Requerimiento 5
-- Objetivo:
-- Identificar agentes que gestionaron llamadas los fines de semana 
-- y cuántas llamadas atendieron específicamente sábado y domingo.

SELECT 
    ag.agent_id, 
    ag.agent_name, 
    SUM(CASE WHEN DAYNAME(call_date) = 'Saturday' THEN 1 ELSE 0 END) AS Total_Llamadas_Sábado, 
    SUM(CASE WHEN DAYNAME(call_date) = 'Sunday' THEN 1 ELSE 0 END) AS Total_Llamadas_Domingo
FROM calls ca
JOIN agents ag ON ag.agent_id = ca.agent_id
WHERE DAYNAME(call_date) IN ('Saturday', 'Sunday')
GROUP BY ag.agent_id, ag.agent_name;
