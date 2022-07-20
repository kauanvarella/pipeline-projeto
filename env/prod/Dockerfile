FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install ansible wget unzip python3-pip -y
RUN pip3 install boto
RUN wget https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_linux_amd64.zip -O /tmp/terraform_1.2.5_linux_amd64.zip
RUN unzip /tmp/terraform_1.2.5_linux_amd64.zip -d usr/bin