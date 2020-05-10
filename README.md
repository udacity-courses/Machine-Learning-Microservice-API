# Machine Learning Microservice API
Machine Learning Microservice API

[![circleCI](https://circleci.com/gh/anyulled/Machine-Learning-Microservice-API.svg?style=svg)](https://app.circleci.com/gh/anyulled/Machine-Learning-Microservice-API)

## Summary
This project contains a web application to predict prizes based un machine learning algorithms based on some data.
It also contains all the necessary configuration to run the application within a docker container and within a kubernetes cluster.

## How to run the Python scripts
You can either run the application via `python3 app.py` to run it locally, but you're encouraged to run it within a containerized environment.
Please refer to the `run_docker.sh` and `run_kubernetes.sh` scripts.

### Run web app
 Perform: 
 ```shell script
make run
```
It will run the python app in port **80**.

## Files in the project
- `run_docker.sh` running the application within docker.
- `run_kubernetes` running the application within kubernetes cluster.
- `make_prediction.sh` once the application is running, this script makes a request to the web server.
