FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y graphviz
RUN apt-get install -y default-jre
RUN apt-get install -y python-pip
RUN pip install sphinxcontrib_plantuml
RUN pip install sphinx_bootstrap_theme
