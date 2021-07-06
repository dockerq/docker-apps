#! /bin/bash

docker run -d -p 36688:8888 -v `pwd`/data:/home/jovyan/work --name jupyter \
    -e PASSWORD=pass --user root \
    jupyter/datascience-notebook