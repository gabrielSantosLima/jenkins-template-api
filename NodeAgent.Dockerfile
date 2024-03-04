FROM jenkins/agent:latest-alpine-jdk17

USER root

RUN apk update 
RUN apk add nodejs npm 