FROM ubuntu:latest

# argument variable must be placed just after FROM
ARG username=etud

LABEL maintainer="Jean-Michel RICHER - University of Angers, France"
LABEL email="jean-michel.richer@univ-angers.fr"

USER root
RUN apt update
RUN apt install sudo nano bash-completion tree -y
RUN groupadd -g 1000 $username

RUN useradd -u 1000 -g 1000 $username
RUN mkdir /home/$username

RUN chown -R 1000:0 /home/$username
RUN echo 'ubuntu ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

ENV HOME=/home/$username
ENV HOSTNAME=sciences
WORKDIR /home/$username
COPY ./.bashrc .

USER $username



