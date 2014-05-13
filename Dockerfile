FROM ubuntu
MAINTAINER Ziad Saab ziad.saab@gmail.com

RUN apt-get -y update
RUN apt-get -y install python g++ make curl
RUN curl -L 'https://github.com/joyent/node/archive/v0.11.13.tar.gz' -o /tmp/node.tar.gz
RUN cd / && tar xzf /tmp/node.tar.gz
RUN cd /node-0.11.13 && ./configure && make

CMD PATH=/node-0.11.13:$PATH /bin/bash -i
