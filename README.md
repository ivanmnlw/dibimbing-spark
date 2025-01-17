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

## Inizialitation
1. Run Docker Desktop
2. Run 'make postgres'
3. Run 'make airflow'
4. Run 'make spark'

## File Assignment
1. /spark-scripts/spark-assginment.py -> Pyspark script
2. /dags/spark-dag-assignment.py -> DAG file

## How to run Airflow
1. After inizialitation, go to localhost:8081 (airflow)
2. ![Screenshot 2025-01-17 224139](https://github.com/user-attachments/assets/4f977d6e-60e8-4dd3-a53b-84453bcf6ad8)
   Trigger spark_airflow_dag_assignment
4. ![Screenshot 2025-01-17 224231](https://github.com/user-attachments/assets/693c05b8-c24d-4681-8337-be8bfbc8d335)
   Go to logs and see more. To see the output


