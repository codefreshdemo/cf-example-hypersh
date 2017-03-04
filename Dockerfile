FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install wget

RUN wget https://hyper-install.s3.amazonaws.com/hyper-linux-x86_64.tar.gz
RUN tar xzf hyper-linux-x86_64.tar.gz
RUN chmod +x hyper

#ENTRYPOINT ["/bin/sh", "-c", "hyper"]

CMD ["/bin/sh", "-c", "./hyper"]