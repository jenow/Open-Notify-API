#!/bin/bash

cd Open-Notify-API
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
mkvirtualenv opennotify
pip install -r requirements.txt
python update.py
workon opennotify
foreman start -f Procfile.dev