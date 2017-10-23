FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y default-jre
RUN apt-get install -y python-pip
RUN pip install sphinxcontrib_plantuml
