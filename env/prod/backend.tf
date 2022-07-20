terraform {
  backend "s3" {
    bucket = "terraform-state-kauanvarella"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}
