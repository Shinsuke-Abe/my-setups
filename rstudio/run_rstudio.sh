# !/bin/sh

docker run --name rstudio -d -v `pwd`:/home/rstudio -p 8787:8787 rocker/rstudio
