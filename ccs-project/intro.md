# Analysis of German YouTube comments: How people from the lateral thinking movement dominate the comments section under videos of the "tagesschau" channel

This Jupyter book contains an analysis of german YouTube comments to find out how the lateral thinking 
movement dominates the
comments section under videos of the "tagesschau" channel. For this purpose, the research question is described in more
detail at the beginning. Subsequently, a dataset is created with the help of the YouTube API, which forms the basis for
this project. Afterwards, different techniques from the field of computational communication science are used to answer
the research question.
```{tableofcontents}
```
## Docker

To reproduce the results, the required dependencies can either be installed locally or the provided docker image can be
used.

To install the dependencies locally, create a virtual environment and activate it. You can then install the
dependencies from the `requirements.txt` file using the following command:

```
(your-venv)$ cd <ccs-tagesschau-comments-project-root>
(your-venv)$ pip install -r requirements.txt
```

```{note}
If you are using an M1 Mac you have to replace the `tensorflow` dependency with the `tensorflow-macos` dependency.
```

To use the docker container you first have to build the docker image. Since images are built platform-specifically,
you need to create the image yourself to suit the platform on which you want to run the container. Using an image built
for a different platform does not make sense because the performance would be too poor to execute the machine learning
algorithms and models.

To build the image and run the container execute the commands below. The image is based on the `jupyter/minimal-notebook`
image which provides a ready-to-use python environment together with a jupyter lab server. The Dockerfile installs 
all required dependencies and copies the project code into the container. If you use the code below to run the image 
you can access the jupyter lab server on `localhost:10000`.

```
$ cd <ccs-tagesschau-comments-project-root>
$ docker build -t ccs . # build the image and name it ccs
$ docker run -p 10000:8888 ccs # run the container and expose jupyter lab on port 10000
```