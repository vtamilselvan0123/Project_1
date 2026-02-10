IMAGE_NAME=tamilsevan/dev
docker pull $IMAGE_NAME:latest
docker stop react-app || true
docker rm react-app || true
docker run -d --name react-app -p 80:80 $IMAGE_NAME:latest
