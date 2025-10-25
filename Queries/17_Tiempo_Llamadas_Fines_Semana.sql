-- Requerimiento 17  
-- Objetivo:  
-- Muestra el total de tiempo invertido en llamadas por cada cliente durante fines de semana.

SELECT cu.customer_id,
       cu.customer_name,
       SUM(ca.duration_minutes) as Tiempo_Total
       
FROM customers cu
JOIN calls ca on ca.customer_id = cu.customer_id
GROUP BY cu.customer_id, cu.customer_name
ORDER BY Tiempo_Total DESC;

