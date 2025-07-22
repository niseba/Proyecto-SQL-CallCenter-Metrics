-- Requerimiento 2
-- Objetivo:
-- Obtener el total de llamadas recibidas por día de la semana, ordenadas de mayor a menor.

SELECT 
    COUNT(*) AS Total_Llamadas, 
    DAYNAME(call_date) AS Día_Semana
FROM calls
GROUP BY Día_Semana
ORDER BY COUNT(*) DESC;
