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
# Initialization
1. Run make jupyter
2. Run make kafka
3. Run make spark

# Folder and File
1. ./notebooks/Assignment-Kafka-Producer-part2.ipynb
2. ./notebooks/Assignment-Spark-Consumer-Stream-part2.ipynb

# How to Run
1. Open localhost:9999
2. Run Assignment-Kafka-Producer-part2.ipynb
   It will create a topic
   ![producer](https://github.com/user-attachments/assets/3663d98c-12e5-4544-9168-a2bdf65a31ea)
3. Run Assignment-Spark-Consumer-Stream-part2.ipynb and open console log
   ![console-log](https://github.com/user-attachments/assets/fa1a6b44-c626-43f1-a730-8cccf562f69c)
   the count aggregation process every 5 minute

# Code Explained
- .withWatermark("event_time", "60 minutes") -> so data can be late up to 1 hour
- .groupBy(window(col("event_time"), "1 day", "1 day")) -> create window function for grouping which window duration = 1 day and window sliding interval = 1 day (Daily)
- .agg(count("*").alias("total_records")) -> Count total purchase
- .trigger(processingTime='5 minutes') -> to make it process every 5 minutes
- .outputMode("complete") -> For aggregation count we use complete mode
