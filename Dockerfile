FROM ubuntu

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get -y install python python-dev python-pip virtualenvwrapper redis-server git ruby bash && \
    git clone https://github.com/jenow/Open-Notify-API.git && \
    gem install foreman && \
    cd Open-Notify-API && \
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh && \
    mkvirtualenv opennotify && \
    pip install -r requirements.txt && \
    python update.py && \
    exit && \
    workon opennotify

ADD run.sh .

CMD bash ./run.sh