FROM jupyter/minimal-notebook:python-3.9.13

USER root
RUN apt-get update && apt-get install -y gcc
USER $NB_UID

COPY ./requirements.txt ./requirements.txt
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

RUN python -m spacy download de_core_news_md

COPY ./ccs-project ./ccs-porject
ENV JUPYTER_ENABLE_LAB=yes

