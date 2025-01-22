CREATE STREAM avg_humidity_stream AS
SELECT condition, avg_humidity FROM avg_humidity_table EMIT CHANGES;

CREATE STREAM avg_humidity_exported WITH (
    KAFKA_TOPIC='avg_humidity_topic',
    VALUE_FORMAT='JSON'
) AS
SELECT * FROM avg_humidity_stream;