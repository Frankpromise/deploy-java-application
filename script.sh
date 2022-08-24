#/bin/bash
PORT_EXT=8080
PORT_INT=8080

if [[ $1 ]]; then
    PORT_EXT=$1
fi

if [[ $2 ]]; then
    PORT_INT=$2

fi

docker container rm node_test1 -f
docker image rm java-docker -f 
docker build -t java-docker .
docker run -d --name node_test1 -e $PORT_EXT -p $PORT_EXT:$PORT_INT java-docker
docker container ls










