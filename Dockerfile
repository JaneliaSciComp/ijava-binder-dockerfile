FROM jupyter/minimal-notebook:6cc4a8596a0b

USER root

# dependencies
RUN apt-get update
RUN apt-get install -y openjdk-18-jdk maven

# ijava kernel
WORKDIR /app
RUN git clone --depth 1 https://github.com/frankfliu/IJava.git

WORKDIR /app/IJava
RUN ./gradlew installKernel


# cleanup etc.
RUN rm -rf /app

# user name and ID comes from base container
# Binder wants the content repo in $HOME (ie, the repo you put this Dockerfile into)
ENV HOME /home/${NB_USER}
COPY . ${HOME}
RUN chown -R ${NB_UID}:${NB_GID} ${HOME}
WORKDIR ${HOME}

USER ${NB_USER}