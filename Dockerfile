FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get install wget -y
RUN sudo apt-get install unzip -y
RUN sudo apt-get install curl -y
RUN wget https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_linux_amd64.zip -O /tmp/terraform_1.2.5_linux_amd64.zip
RUN unzip /tmp/terraform_1.2.5_linux_amd64.zip -d usr/bin
RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip
RUN unzip awscliv2.zip
RUN sudo ./aws/install
RUN aws configure set aws_access_key_id AKIASDLSQKOMKAS3AXOA
RUN aws configure set aws_secret_access_key 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
RUN aws configure set default.region us-west-2
VOLUME [ "/env/prod" ]