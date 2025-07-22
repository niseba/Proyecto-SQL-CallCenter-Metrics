-- Requerimiento 11  
-- Objetivo:  
-- Identificar los días del último mes donde hubo más de 2 llamadas abandonadas.

SELECT 
    DATE(call_date) AS Fecha, 
    DAYNAME(call_date) AS Día, 
    DAYOFWEEK(call_date) AS NúmDía, 
    COUNT(*) AS Llamadas_Abandonadas
FROM calls
WHERE abandoned = 1 
  AND MONTH(call_date) = (SELECT MONTH(MAX(call_date)) FROM calls)
GROUP BY DATE(call_date), Día, NúmDía
HAVING COUNT(*) > 2
ORDER BY DATE(call_date);
