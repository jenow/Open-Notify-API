FROM amd64/debian:stretch-slim

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get -y install python python-dev python-pip virtualenvwrapper redis-server git ruby bash && \
    git clone https://github.com/jenow/Open-Notify-API.git && \
    gem install foreman

RUN cd Open-Notify-API && \
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh && \
    mkvirtualenv opennotify && \
    pip install -r requirements.txt

ADD run.sh .

CMD bash ./run.sh