CREATE STREAM weather_stream (
    weather_id VARCHAR,
    city VARCHAR,
    temperature DOUBLE,
    humidity INT,
    wind_speed DOUBLE,
    condition VARCHAR,
    timestamp VARCHAR
) WITH (
    KAFKA_TOPIC = 'assign-topic',
    VALUE_FORMAT = 'JSON'
);