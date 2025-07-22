-- Requerimiento 14  
-- Objetivo:  
-- ¿Cuál es el tiempo promedio de llamada por cada día de la semana (solo llamadas atendidas)?

SELECT 
    DAYNAME(call_date) AS Día, 
    ROUND(AVG(duration_minutes), 1) AS Duración_Promedio
FROM calls
WHERE abandoned = 0
GROUP BY Día
ORDER BY Duración_Promedio DESC;
