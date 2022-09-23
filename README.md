follow the tutorial here:

https://towardsdatascience.com/run-airflow-docker-1b83a57616fb

 

summary:
```
mkdir airflow-local
cd airflow-local
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.3.0/docker-compose.yaml'
mkdir ./dags ./logs ./plugins
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env
docker-compose up airflow-init
docker-compose up
```
 

access the web UI at localhost:8080


setup:
---

1- RUN `docker-compose -f apache-airflow.yaml build`
2- Run `docker-compose -f etl_databases.yml up -d` in the terminal to install Postgresql and MySQL databases. \
3- Run `docker-compose -f apache-airflow.yaml up -d` in the terminal to install Apache Airflow and required dependent services. \
4- Run python file, initialize_databases.py, which is located inside the dags folder. \
5- Run python file, initialize_reference_table.py, which is located inside the dags folder. 
