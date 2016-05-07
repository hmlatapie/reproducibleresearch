from ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y aptitude

RUN apt-get install -y ipython
RUN apt-get install -y python-pip
#RUN pip install sacred
RUN apt-get install -y man
RUN apt-get install -y vim
RUN pip install pymongo
RUN apt-get install -y git
RUN git clone https://github.com/IDSIA/sacred.git && cd sacred && python setup.py install

VOLUME /root/rr
WORKDIR /root/images

CMD /bin/bash

