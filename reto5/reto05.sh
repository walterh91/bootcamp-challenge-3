#!/bin/bash

docker run -d --name nodereto5 -p 4000:4000 walterh91/nodeappreto05:v1.0.0

#pedir por linea de comando el usuario y la contrasenia

read -p 'Username: ' uservar
read -sp 'Password: ' passvar 

docker login -u $uservar -p $passvar docker.io

docker push walterh91/nodeappreto05:v1.0.0



