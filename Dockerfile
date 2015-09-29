FROM continuumio/anaconda
MAINTAINER Eric Drechsel <eric@pdxhub.org>

RUN conda install jupyter

VOLUME /notebooks
WORKDIR /notebooks

CMD jupyter notebook --ip 0.0.0.0 --no-browser
