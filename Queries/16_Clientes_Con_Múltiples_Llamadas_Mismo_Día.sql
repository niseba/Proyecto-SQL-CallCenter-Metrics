-- Requerimiento 16  
-- Objetivo:  
-- Necesitamos identificar los clientes que han llamado al menos 2 veces en un mismo día.

SELECT 
    cu.customer_id, 
    cu.customer_name, 
    DATE(ca.call_date) AS Fecha, 
    COUNT(ca.customer_id) AS Total_Llamadas
FROM customers cu
JOIN calls ca ON ca.customer_id = cu.customer_id
GROUP BY cu.customer_id, cu.customer_name, DATE(ca.call_date)
HAVING COUNT(ca.customer_id) >= 2;
