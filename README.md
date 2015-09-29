I created this Docker image to automate the steps needed to get from the base continuumio/anaconda image to a running Jupyter Notebook server.

- Updates `conda`
- Installs `jupyter`
- Runs the notebook
- Comes with instructions for use as a single user notebook server

## Prerequisites

- A working Docker host
  - On Linux, just install docker.
  - On OSX/Win, check out [Docker Toolbox](https://www.docker.com/toolbox)

## Usage

```
docker run -t -p 8888:8888 -v ~/ipython_notebooks:/notebooks -i pdxhub/jupyter-anaconda
```

## Customize

To customize the image, clone the repo and edit the `Dockerfile`, then `docker build`. 

- `git clone https://github.com/pdxhub/docker-jupyter-anaconda`
- Edit Dockerfile, adding more lines like `RUN conda install my_package`.
- Each time you make a change:

```
docker built -t jupyter-anaconda .
```

Note you can run your custom image with `-i jupyter-anaconda`.
