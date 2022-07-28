# module "instancia_id" {
#   source = "../../pipeline-homolog/infra-homolog"
# }
data "aws_instance" "instancia" {
  name = "app_server"
}

resource "aws_ami_from_instance" "AMI_Prod" {
  name = "imagem-producao"
  source_instance_id = data.aws_instance.instancia.id
  snapshot_without_reboot = true
} 