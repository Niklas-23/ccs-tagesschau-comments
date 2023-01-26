# About this project

This Jupyter book contains an analysis of german YouTube comments to find out how right-wing people dominate the
comments section under videos of the "tagesschau" channel. For this purpose, the research question is described in more
detail at the beginning. Subsequently, a dataset is created with the help of the YouTube API, which forms the basis for
this project. Afterwards, different techniques from the field of computational communication science are used to answer
the research question.

```{tableofcontents}
```

hHow the comments section under the videos of the "tagesschau" channel is dominated by right-wing populist and
conspiracy-theory statements.

How people from the lateral thinking movement dominate the comments sections under videos of the "tagesschau" channel

## Docker 

```
$(ccs-german-youtube-comments) docker build -t ccs .
$(ccs-german-youtube-comments) docker run -p 10000:8888 ccs-project
```