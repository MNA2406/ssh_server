FROM ubuntu

RUN apt update

RUN apt install -y python3 openssh-server

#RUN apt install -y openssh-server

RUN service ssh start

RUN adduser sshmurali

RUN compgen -u

