#!/bin/bash
ls
DOCKER_TAG='latest'
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t accoon.pitstop.apigateway:$DOCKER_TAG src/Pitstop.ApiGateway
docker tag accoon.pitstop.apigateway:$DOCKER_TAG $DOCKER_USERNAME/accoon.pitstop.apigateway:$DOCKER_TAG
docker push $DOCKER_USERNAME/accoon.pitstop.apigateway:$DOCKER_TAG