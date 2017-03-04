FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install wget

RUN wget https://hyper-install.s3.amazonaws.com/hyper-arm.tar.gz
RUN tar xzf hyper-arm.tar.gz
RUN chmod +x hyper

ENTRYPOINT ["hyper"]
CMD ["--help"]