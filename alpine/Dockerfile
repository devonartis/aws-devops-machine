FROM alpine
Maintainer T.Devon Artis <troin.artis@gmail.com>

RUN apk update && apk upgrade && \
    apk add git && apk add python &&  \
    apk add python-dev && apk add py-pip && \
    apk add curl && apk add bash && \
    apk add ansible 

RUN  pip install boto && pip install boto3 && pip install awscli
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli

RUN mkdir /root/.aws   
