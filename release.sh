IMAGE=tonydyb/alpine-node-yarn-install
TAG=16
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env