#!/bin/bash

cd Open-Notify-API
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
workon opennotify
foreman start -f Procfile.dev