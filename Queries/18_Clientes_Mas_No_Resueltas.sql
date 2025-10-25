-- Requerimiento 18  
-- Objetivo:  
-- ¿Cuántos clientes han tenido más llamadas no resueltas que resueltas?

SELECT cu.customer_id, cu.customer_name,
       SUM(CASE WHEN ca.resolved=TRUE THEN 1 ELSE 0 END) AS Llamadas_Resueltas,
       SUM(CASE WHEN ca.resolved=FALSE THEN 1 ELSE 0 END) AS Llamadas_No_Resueltas
           
FROM customers cu
JOIN calls ca on ca.customer_id=cu.customer_id
GROUP BY cu.customer_id, cu.customer_name
HAVING Llamadas_No_Resueltas > Llamadas_Resueltas;  

