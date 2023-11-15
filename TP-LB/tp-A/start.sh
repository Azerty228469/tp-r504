#!/usr/bin/bash
docker build -t im-nginx-lb -f Dockerfile .
mkdir -p shared1 shared2
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html
#Docker run nginx1
docker run --rm -d \
	-p 81:80 \
	--name nginx1 \
	--mount type=bind,source=$(pwd)/shared1,target=/usr/share/nginx/html \
	nginx
#Docker run nginx2
docker run --rm -d \
	-p 82:80 \
	--name nginx2 \
	--mount type=bind,source=$(pwd)/shared2,target=/usr/share/nginx/html \
	nginx
#Docker run nginx3
docker run --rm -d \
	-p 83:80 \
	--name nginx3 \
	im-nginx-lb
