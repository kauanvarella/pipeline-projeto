module "instancia_id" {
  source = "../../pipeline-homolog/infra-homolog"
}

resource "aws_ami_from_instance" "AMI_Prod" {
  name = "imagem-producao"
  source_instance_id = module.instancia_id.aws_instance.app_server.id
  snapshot_without_reboot = true
} 