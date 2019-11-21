## To run and force recompile:
# docker-compose up --build

FROM tiangolo/uwsgi-nginx-flask:python3.7
# FROM python:3.7
RUN apt update
RUN apt install -y bash nano git
RUN pip install --no-cache-dir simulaqron
RUN pip install --no-cache-dir projectq

# ENV STATIC_URL /static
ENV STATIC_PATH /app/static

## The git is private for now
## When you want to use public sources from github, comment the below
## COPY line, and uncomment the line after that will
## clone github sources.
COPY . /git
# RUN git clone https://github.com/h-oll/fete_de_la_science_2019.git /git

RUN cp -r /git/app /

WORKDIR /app


