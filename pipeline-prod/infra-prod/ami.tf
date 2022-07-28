# module "instancia_id" {
#   source = "../../pipeline-homolog/infra-homolog"
# }
data "terraform_remote_state" "instancia" {
  backend = "local"

  config = {
    path = "../../pipeline-homolog/homolog/terraform.tfstate"
  }
}

resource "aws_ami_from_instance" "AMI_Prod" {
  name = "imagem-producao"
  source_instance_id = data.terraform_remote_state.instancia.outputs.id_instancia
  snapshot_without_reboot = true
} 