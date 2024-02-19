FROM ubuntu:20.04

ENV PORT=8182

RUN apt update && apt upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install mafft python3.9 virtualenv python3-setuptools -y

EXPOSE 8182

CMD ["sleep","infinity"]