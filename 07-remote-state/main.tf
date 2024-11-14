terraform {
  backend "s3" {
    bucket = "terraform-d80"
    key    = "sample/terraform.tfstate"
    region = "us-east-2"
  }
}


resource "null_resource" "test" {}
