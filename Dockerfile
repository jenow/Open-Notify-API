FROM ubuntu

RUN apt-get update && \
    apt-get -y install python python-dev python-pip virtualenvwrapper redis-server git ruby && \
    git clone https://github.com/jenow/Open-Notify-API.git && \
    gem install foreman

ADD run.sh .

CMD bash ./run.sh