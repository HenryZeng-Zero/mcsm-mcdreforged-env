tag_name=mcsm-mcdreforged-env
version=1.0

sudo docker build ./src \
    --network host \
    --build-arg "HTTP_PROXY=${HTTP_PROXY}" \
    --build-arg "HTTPS_PROXY=${HTTPS_PROXY}" \
    -t ${tag_name}:${version}

sudo docker run -it ${tag_name}:${version} cat config.yml > config.yml
sudo docker run -it ${tag_name}:${version} cat permission.yml > permission.yml