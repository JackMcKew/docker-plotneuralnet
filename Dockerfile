FROM ubuntu:18.04
LABEL maintainer="Jack McKew" \
      description="A docker image for using PlotNeuralNet https://github.com/HarisIqbal88/PlotNeuralNet" \
      repo="https://github.com/JackMcKew/docker-plotneuralnet"

RUN apt-get update && \
    apt-get install -y --no-install-recommends texlive-latex-base && \
    apt-get install -y --no-install-recommends texlive-fonts-recommended && \
    apt-get install -y --no-install-recommends texlive-fonts-extra && \
    apt-get install -y --no-install-recommends texlive-latex-extra && \
    apt-get clean

ADD PlotNeuralNet /PlotNeuralNet

WORKDIR "/PlotNeuralNet"

CMD ["bash"]