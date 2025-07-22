-- Requerimiento 10  
-- Objetivo:  
-- Calcular qué porcentaje de las llamadas de cada tipo fueron abandonadas.

SELECT 
    ca.call_type_id, 
    ct.type_name, 
    COUNT(*) AS Total_Llamadas, 
    SUM(CASE WHEN abandoned = 1 THEN 1 ELSE 0 END) AS Total_Abandonadas, 
    ROUND(SUM(CASE WHEN abandoned = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Porcentaje_Abandonadas
FROM calls ca
JOIN call_types ct ON ct.call_type_id = ca.call_type_id
GROUP BY ca.call_type_id, ct.type_name
ORDER BY Porcentaje_Abandonadas DESC;
