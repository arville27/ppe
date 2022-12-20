#!/bin/bash

gunicorn -b 0.0.0.0:80 --chdir "/${RELEASE}/simulator_interface" simulator_interface.wsgi