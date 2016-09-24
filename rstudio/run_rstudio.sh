# !/bin/sh

docker run --name rstudio -d --env-file=`pwd`/.env.list -v `pwd`:/home/rstudio -p 8787:8787 rocker/rstudio
