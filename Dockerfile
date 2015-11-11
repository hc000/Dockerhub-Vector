FROM phusion/baseimage:0.9.17

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install python -y
RUN mkdir vector && \
    cd vector && \
    wget --output-document=- https://bintray.com/artifact/download/netflixoss/downloads/1.0.2/vector.tar.gz \
    | tar zxf -

EXPOSE 12000

ENTRYPOINT ( cd vector && python -m SimpleHTTPServer 12000)

