CREATE TABLE avg_humidity_table AS
SELECT
    condition,
    AVG(humidity) AS avg_humidity
FROM weather_table
GROUP BY condition
EMIT CHANGES;