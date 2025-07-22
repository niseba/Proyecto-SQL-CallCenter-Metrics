# 📞 Análisis SQL de Centro de Llamadas

Este proyecto presenta una colección de consultas SQL, usando MySQL, orientadas al análisis operativo de un centro de llamadas simulado. El objetivo principal es extraer métricas clave, identificar patrones de comportamiento y generar información accionable, alineada con escenarios reales de negocio como los que enfrentan empresas de atención al cliente tipo BPO o contact centers.

---

## 🗂️ Estructura de la Base de Datos

El modelo de datos está compuesto por las siguientes tablas relacionales:

- **`calls`**: Registros detallados de llamadas realizadas por los clientes, incluyendo duración, fecha, agente asignado, tipo de llamada, y estados como resuelta, abandonada y cumplimiento de SLA.
- **`agents`**: Información de los agentes del centro de llamadas, como nombre, estatus y fecha de contratación.
- **`customers`**: Datos de los clientes, incluyendo nombre, región y si tienen estatus VIP.
- **`call_types`**: Catálogo de tipos de llamada (ej. Consulta, Reclamo, Soporte técnico, Venta).
- **`surveys`**: Encuestas de satisfacción realizadas luego de las llamadas, con calificaciones y comentarios de los clientes.

---

## 🎯 Objetivo del Proyecto

Las consultas SQL desarrolladas buscan resolver preguntas clave del negocio como:

- Desempeño individual y colectivo de los agentes.
- Comportamiento y satisfacción del cliente.
- Análisis de duración, resolución y abandono de llamadas.
- Distribución de la carga operativa en franjas horarias y días específicos.

Estas consultas se agrupan en categorías temáticas para facilitar su navegación y reflejar dominio de SQL en contextos empresariales reales.

---

## 📊 Categorías de Análisis

### 📞 Análisis General del Volumen de Llamadas
- **Requerimiento 1**: Número total de llamadas gestionadas por cada agente, incluyendo aquellos que no gestionaron ninguna.
- **Requerimiento 2**: Total de llamadas recibidas por día de la semana, ordenadas de mayor a menor.
- **Requerimiento 3**: Identificación de las franjas horarias (mañana, tarde, noche) con mayor volumen de llamadas recibidas.

### 🧍‍♂️ Desempeño de Agentes
- **Requerimiento 4**: Porcentaje de llamadas resueltas por cada agente sobre el total que gestionó.
- **Requerimiento 5**: Agentes que atendieron llamadas los fines de semana y cantidad de llamadas recibidas en sábado y domingo.
- **Requerimiento 6**: Promedio de duración de llamadas resueltas por agente, ordenado de mayor a menor.
- **Requerimiento 7**: Top 5 agentes con más llamadas resueltas durante el mes más reciente.
- **Requerimiento 8**: Días únicos trabajados por agente y promedio de llamadas gestionadas por día.

### 📊 Indicadores de Calidad y Abandono
- **Requerimiento 9**: Tasa de abandono general del call center y cantidad total de llamadas abandonadas.
- **Requerimiento 10**: Porcentaje de abandono por tipo de llamada.
- **Requerimiento 11**: Días del último mes con más de 2 llamadas abandonadas.
- **Requerimiento 12**: Día de la semana con la menor tasa de resolución de llamadas.

### ⏱️ Duración de Llamadas
- **Requerimiento 13**: Tiempo promedio de atención por tipo de llamada (excluyendo llamadas abandonadas).
- **Requerimiento 14**: Duración promedio de llamadas atendidas por día de la semana.
- **Requerimiento 15**: Clientes con al menos una llamada no resuelta y su tiempo total en llamadas.

### 👥 Análisis de Clientes
- **Requerimiento 16**: Identificación de clientes que realizaron al menos 2 llamadas en un mismo día.
- **Requerimiento 17**: Cálculo del tiempo total de llamadas realizadas por cliente durante fines de semana.
- **Requerimiento 18**: Detección de agentes cuyos clientes han tenido más llamadas no resueltas que resueltas.

### 🏅 Calificación de Agentes
- **Requerimiento 19:** Top 5 agentes con mejor rating en encuestas tras llamadas ≤15 minutos.
- **Requerimiento 20:** Clasificación de comentarios en sentimiento: Positivo, Negativo o Neutro.

---
