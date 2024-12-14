FROM node:22

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin

# zip
RUN apt-get update && apt-get install -y zip && rm -rf /var/lib/apt/lists/*

# aws
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
RUN ./aws/install && aws --version

# jq
ENV JQ_VERSION='1.6'
RUN wget https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 -O /usr/bin/jq && \
    chmod +x /usr/bin/jq && npm install -g aws-cdk

ADD package.json /package.json

WORKDIR /app
ADD . /app

CMD ["node"]