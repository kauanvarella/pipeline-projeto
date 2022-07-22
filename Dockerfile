FROM ubuntu:18.04
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
RUN sudo apt install python3 -y
RUN sudo apt update
RUN sudo apt install software-properties-common -y
RUN sudo add-apt-repository --yes --update ppa:ansible/ansible
RUN sudo apt-get install ansible -y
RUN sed -i.bkp '17c\remote_tmp = ~/tmp' /etc/ansible/ansible.cfg
RUN sed -i.bkp '18c\local_tmp = ~/tmp' /etc/ansible/ansible.cfg
RUN sed -i.bkp '259c\retry_files_save_path = ~/ansible-retry' /etc/ansible/ansible.cfg
RUN sed -i.bkp '381c\control_path_dir = /tmp/ansible/cp' /etc/ansible/ansible.cfg
RUN sudo usermod -aG sudo ansible