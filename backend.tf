terraform {
  backend "s3" {
    bucket = "terraform-state-kauanvarella"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
