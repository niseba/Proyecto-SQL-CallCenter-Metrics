-- Requerimiento 9
-- Objetivo:
-- Calcular la cantidad de llamadas abandonadas y la tasa de abandono del call center 
-- (porcentaje de llamadas que no fueron atendidas).

SELECT 
  COUNT(*) AS total_calls,
  SUM(CASE WHEN abandoned = 1 THEN 1 ELSE 0 END) AS Llamadas_Abandonadas,
  ROUND(SUM(CASE WHEN abandoned = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Porcentaje_Llamadas_Abandonadas
FROM calls;
