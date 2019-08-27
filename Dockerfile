# This will specify what version of python we are using on docker. This is alpine version which mean the lite version of python
FROM python:3.7-alpine

#This will specify who is going to maintain this file
MAINTAINER letscodedjango

ENV PYTHONUNBUFFERED 1

#This will copy the requirement file from local repo to docker repo
COPY ./requirement.txt /requirement.txt

# This will install all the packages related to our project on docker
RUN pip install -r /requirement.txt

# this will create a blank directory in our docker
RUN mkdir /app
# Any application we run from docker default it will run from this directory unless we explicitly specify
WORKDIR /app

#This will copy the local app folder to our docker app folder
COPY ./app /app

# create user that can run our app using docker
# RUN adduser -D letscode
# USER letscode
