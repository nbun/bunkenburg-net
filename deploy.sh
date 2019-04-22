#!/bin/sh
scp -i ~/.ssh/server_rsa -r /home/nbu/Documents/website/theProfessional-hakyll/_site/* niels@bunkenburg.net:/var/www/html
