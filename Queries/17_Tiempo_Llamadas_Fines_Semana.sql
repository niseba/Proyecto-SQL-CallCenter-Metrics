-- Requerimiento 17  
-- Objetivo:  
-- Muestra el total de tiempo invertido en llamadas por cada cliente durante fines de semana.

SELECT 
    cu.customer_id, 
    cu.customer_name, 
    SUM(ca.duration_minutes) AS Total_Teimpo_Llamadas
FROM calls ca
JOIN customers cu ON cu.customer_id = ca.customer_id
WHERE DAYNAME(ca.call_date) IN ('Saturday','Sunday')
GROUP BY cu.customer_id, cu.customer_name;
