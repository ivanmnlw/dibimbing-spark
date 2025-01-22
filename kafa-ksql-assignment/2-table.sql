CREATE TABLE weather_table AS
SELECT weather_id,
       LATEST_BY_OFFSET(city) AS city,
       LATEST_BY_OFFSET(temperature) AS temperature,
       LATEST_BY_OFFSET(humidity) AS humidity,
       LATEST_BY_OFFSET(wind_speed) AS wind_speed,
       LATEST_BY_OFFSET(condition) AS condition,
       LATEST_BY_OFFSET(timestamp) AS timestamp
FROM weather_stream
GROUP BY weather_id;