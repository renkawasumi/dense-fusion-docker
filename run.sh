xhost +

docker run -it --rm \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume=${PWD}/home:/root \
    --gpus all \
    --name=dense-fusion \
    dense-fusion:latest \
    bash
