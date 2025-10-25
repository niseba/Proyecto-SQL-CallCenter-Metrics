-- Requerimiento 17  
-- Objetivo:  
-- Muestra el total de tiempo invertido en llamadas por cada cliente durante fines de semana.

SELECT cu.customer_name, cu.customer_id,
       COUNT(ca.call_id) as Cantidad_Llamadas

FROM calls ca
JOIN customers cu on cu.customer_id = ca.customer_id
GROUP BY cu.customer_name, cu.customer_id
HAVING COUNT(ca.call_id)>=2
ORDER BY Cantidad_Llamadas DESC;

