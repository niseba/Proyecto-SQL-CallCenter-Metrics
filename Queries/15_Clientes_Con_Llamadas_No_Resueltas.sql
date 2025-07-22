-- Requerimiento 15  
-- Objetivo:  
-- Queremos saber qué clientes tuvieron al menos una llamada no resuelta y cuánto tiempo total han invertido en llamadas.

SELECT 
    cu.customer_id, 
    cu.customer_name, 
    (SELECT COUNT(*) 
     FROM calls ca 
     WHERE ca.customer_id = cu.customer_id AND ca.abandoned = 1) AS Llamadas_No_Resueltas, 
    SUM(ca.duration_minutes) AS Tiempo_En_Llamadas
FROM customers cu
JOIN calls ca ON ca.customer_id = cu.customer_id
GROUP BY cu.customer_id, cu.customer_name
HAVING 
    (SELECT COUNT(*) 
     FROM calls ca 
     WHERE ca.customer_id = cu.customer_id AND ca.abandoned = 1) >= 1
ORDER BY Tiempo_En_Llamadas DESC;
