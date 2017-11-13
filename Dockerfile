FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y graphviz
RUN apt-get install -y default-jre
RUN apt-get install -y python-pip
RUN apt-get install -y git

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y npm
RUN sudo apt-get install -y node

RUN pip install sphinxcontrib_plantuml
RUN pip install sphinx_bootstrap_theme
