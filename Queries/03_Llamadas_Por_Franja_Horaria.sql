-- Requerimiento 3
-- Objetivo:
-- Identificar las horas del día con mayor volumen de llamadas recibidas.
-- Clasificarlas por franja horaria: mañana, tarde o noche.

SELECT
    CASE 
        WHEN HOUR(call_date) BETWEEN 6 AND 11 THEN 'Mañana'
        WHEN HOUR(call_date) BETWEEN 12 AND 17 THEN 'Tarde'
        WHEN HOUR(call_date) BETWEEN 18 AND 23 THEN 'Noche'
        ELSE 'Noche'
    END AS Franja_Horaria,
    COUNT(*) AS Cantidad_Llamadas
FROM calls
GROUP BY Franja_Horaria
ORDER BY Cantidad_Llamadas DESC;
