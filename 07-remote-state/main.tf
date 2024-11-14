terraform {
  backend "s3" {
    bucket = "hptldevops-state"
    key    = "sample/terraform.tfstate"
    region = "us-east-2"
  }
}


resource "null_resource" "test" {}
