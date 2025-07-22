-- Requerimiento 19
-- Objetivo:
-- Crear una columna "sentimiento" que clasifique cada comentario como 
-- Positivo, Negativo o Neutro según palabras clave presentes en el texto.

SELECT 
    s.survey_id, 
    s.call_id, 
    s.comment,
    CASE 
        WHEN LOWER(s.comment) LIKE '%excelente%' 
           OR LOWER(s.comment) LIKE '%rápid%' 
           OR LOWER(s.comment) LIKE '%buena%' 
           OR LOWER(s.comment) LIKE '%satisfech%' 
           OR LOWER(s.comment) LIKE '%clar%'
           OR LOWER(s.comment) LIKE '%amab%' 
           THEN 'Positivo'
        WHEN LOWER(s.comment) LIKE '%no resolvió%' 
           OR LOWER(s.comment) LIKE '%demorado%' 
           OR LOWER(s.comment) LIKE '%no resolvieron%'
           OR LOWER(s.comment) LIKE '%no solucion%'
           OR LOWER(s.comment) LIKE '%mal%'
           THEN 'Negativo'
        ELSE 'Neutro'
    END AS sentimiento
FROM surveys s;
