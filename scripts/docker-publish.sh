#!/bin/bash
ls
DOCKER_TAG='latest'
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t accoon.pitstop.customermanagement:$DOCKER_TAG src/Pitshop.CustomerApi/Accoon.Pitshop.CustomerApi.Presenter
docker tag accoon.pitstop.customermanagement:$DOCKER_TAG $DOCKER_USERNAME/accoon.pitstop.customermanagement:$DOCKER_TAG
docker push $DOCKER_USERNAME/accoon.pitstop.customermanagement:$DOCKER_TAG