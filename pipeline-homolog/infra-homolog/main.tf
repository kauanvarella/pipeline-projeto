terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.0"
}

resource "aws_instance" "app_server" {
    ami = var.ami
    instance_type = var.instancia
    key_name = var.chave
    tags = {
        Name = var.tagname
    }
    associate_public_ip_address = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.app_server.id
  allocation_id = var.pub_ip
}

resource "aws_ami_from_instance" "AMI_Prod" {
  name = "imagem-producao"
  source_instance_id = aws_instance.app_server.id
  snapshot_without_reboot = true
  depends_on = [
    aws_instance.app_server
  ]
}