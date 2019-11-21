# https://github.com/tiangolo/uwsgi-nginx-flask-docker
# Script that will be run before loading flask

# The default backend stabilizer is buggy
echo "GREAT"
simulaqron set backend projectq
simulaqron start -f
# python create_db.py
