# first we need to indicate this file as a Dockerfile by adding the FROM command at the top
# FROM = specify the parent image from which we will be building our dockerfile for
# alpine = small base image
FROM node:alpine

# we need to copy all files from within our project and put them inside of the image
# COPY = copies all files within a specified folder/directory from a given location
COPY . /app

# change our working directory to our newly made folder
# so pay attention to the prefixes 
#WORKDIR = speficy the name of the working directory where all files are located
WORKDIR /app

# execute my program
#CMD command = runs any given command line syntax
CMD node app.js