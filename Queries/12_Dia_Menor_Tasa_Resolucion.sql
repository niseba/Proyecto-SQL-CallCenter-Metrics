-- Requerimiento 12  
-- Objetivo:  
-- Determinar qué día de la semana tiene la menor tasa de resolución de llamadas.

SELECT 
    DAYOFWEEK(ca.call_date) AS Día_Semana, 
    COUNT(*) AS Llamadas_Totales, 
    SUM(CASE WHEN resolved = 1 THEN 1 ELSE 0 END) AS Llamadas_Resueltas, 
    (SUM(CASE WHEN resolved = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100.0 AS Tasa_Resolución
FROM calls ca
GROUP BY Día_Semana
ORDER BY Tasa_Resolución;
