############################################################
# Dockerfile to build Common AWS Devops Tools 
# Includes Python, Ruby, AWS ClI, ECS
# Based on Ubuntu
############################################################

FROM ubuntu
Maintainer Devon Artis <devon@devonartis.com>


RUN apt-get update && apt-get install curl -y &&  apt-get install software-properties-common python-software-properties -y && \
    apt-add-repository ppa:ansible/ansible -y && \
    apt-get update && apt-get install ansible -y && \
    apt-get -y update
RUN apt-get install python-pip python-dev build-essential -y  
RUN pip install boto && pip install boto3 && pip install awscli
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli

RUN mkdir /root/.aws



