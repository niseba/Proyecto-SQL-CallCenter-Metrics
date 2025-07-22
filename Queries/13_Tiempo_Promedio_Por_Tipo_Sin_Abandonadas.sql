-- Requerimiento 13  
-- Objetivo:  
-- Calcular el tiempo promedio de atención (en minutos) por tipo de llamada, excluyendo llamadas abandonadas.

SELECT 
    ct.call_type_id, 
    ct.type_name, 
    ROUND(AVG(ca.duration_minutes), 1) AS Duración_Promedio_Min
FROM call_types ct
JOIN calls ca ON ca.call_type_id = ct.call_type_id
WHERE ca.abandoned = FALSE AND ca.duration_minutes IS NOT NULL
GROUP BY ct.call_type_id, ct.type_name
ORDER BY Duración_Promedio_Min DESC;
