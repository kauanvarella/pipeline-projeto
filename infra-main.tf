terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-098e42ae54c764c35"
    instance_type = var.instancia
    key_name = var.chave
    tags = {
        Name = "meu-app"
    }
    associate_public_ip_address = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.app_server.id
  allocation_id = "eipalloc-0e639220173a5279a"
}

# output "IP_publico" {
#   value = aws_instance.app_server.public_ip
# }
