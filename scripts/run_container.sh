#!/bin/sh
container_name=$1
image=$2
version=$3
project_dir=$4
data_dir=$5
port=$6
user=$USER

echo "container_name: $container_name"
echo "image: $image"
echo "version: $version"
echo "project_dir: $project_dir"
echo "data_dir: $data_dir"
echo "user: $user"

docker run \
	-it \
	--name $container_name \
	--gpus=all \
	--shm-size=512gb \
	-p $port:$port \
	-v $project_dir:/home/$user/Projects \
	-v $data_dir:/home/$user/Data \
	--workdir=/home/$user \
	$image:$version