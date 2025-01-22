# Dibimbing, Data Engineering Bootcamp

1. Clone This Repo.
2. Run `make docker-build` for x86 user, or `make docker-build-arm` for arm chip user.

---
```
## docker-build                 - Build Docker Images (amd64) including its inter-container network.
## docker-build-arm             - Build Docker Images (arm64) including its inter-container network.
## postgres                     - Run a Postgres container
## spark                        - Run a Spark cluster, rebuild the postgres container, then create the destination tables
## jupyter                      - Spinup jupyter notebook for testing and validation purposes.
## airflow                      - Spinup airflow scheduler and webserver.
## kafka                        - Spinup kafka cluster (Kafka+Zookeeper).
## datahub                      - Spinup datahub instances.
## metabase                     - Spinup metabase instance.
## clean                        - Cleanup all running containers related to the challenge.
```

---
# File and Folder
1. ./notebooks/assignment-kafka-producer.ipynb
2. ./notebooks/assignment-kafka-producer.ipynb
3. ./kafka-ksql-assignment/

# How to Run
1. Run "Make jupyter" and open localhost:9999
2. Run "Make kafka"

# Kafka Producer
![kafka-producer](https://github.com/user-attachments/assets/d2f76db1-d25a-4800-ba16-0ecaf12c14a0)
1. Kafka Producer produce a weather stream data with Faker
2. Kafka producer send the message to kafka_topic in partition 1 every 5 seconds

# Kafka Consumer
![kafka-consumer](https://github.com/user-attachments/assets/d7460c14-82a9-451a-a1cc-3346a4a0b5f8)
1. Kafka Consumer consume the message with kafka_topic as topic
2. There are two consumer in one consumer group (consumer1 and consumer2 in group_id = assignment_group)
3. The output will count how many times the condition ['Sunny', 'Cloudy', 'Rainy', 'Snowy', 'Windy'] occur in the message
4. The second output show the average temperature from the beginning until recent message

# Topic and Partition
![topic](https://github.com/user-attachments/assets/7819db1c-e246-4c86-8847-efdb6c56b642)
1. The topic consists of 4 partitions and 1 replication factor
2. I set the retention 12 hours

# KSQLDB
1. Open localhost:8083
2. Run all sql command to create stream and table from kafka-sql-assignment folder
3. After that, run kafka-producer in jupyter
4. ![stream-ksqldb](https://github.com/user-attachments/assets/c450141e-a4a6-48e1-8b25-6a86f8822766)
   Create weather_stream from kafka-producer
6. ![ksqldb-table](https://github.com/user-attachments/assets/96c9a406-a3a0-42de-8942-8d785c03f213)
   Create weather_table from weather_stream
7. ![avg_humidity_table](https://github.com/user-attachments/assets/9c56f9b3-375e-415c-88df-12c8f6ccea7f)
   Aggregate using SQL to find the average humidity for each condition






