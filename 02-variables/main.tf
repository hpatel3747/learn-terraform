variable "URL" {
  default = "example.com"
}

## Access variable
output "URL" {
  value = var.URL
}

# Variable is a combination of some other string. Then we have to use ${}
output "URL1" {
  value = "URL - ${var.URL}"
}

# Data types
variable "num1" {
  default = 10
}

variable "bool1" {
  default = true
}

variable "str1" {
  default = "Hello"
}

# Numbers, Booleans & Strings

# Variable types
variable "str2" {
  default = "World"
}

variable "list1" {
  default = [
    10,
    20,
    "xyz",
    false
  ]
}

# List can have combination of multiple data types also.

variable "map1" {
  default = {
    aws = {
      trainer = "John"
      duration = 30
    }
    devops = {
      trainer = "Steve"
      duration = 20
    }
  }
}

output "list1_1" {
  value = var.list1[2]
}

output "map1_aws_trainer" {
  value = var.map1["aws"]["trainer"]
  }

output "map2_aws_trainer" {
  value =var.map1["devops"]["trainer"]
}
# Declare a empty variable and we can get the value from CLI, Unlike ansible or shell we must and should declare a variable in order to use it.
variable "trainer_name" {}


# when you apply terraform, it will prompt for variable value on cli
# or you can provide variable value on terraform apply argument e.g
# git pull ; terraform init ; terraform apply -auto-approve -var trainer_name=John
#
output "trainer_name" {
  value = var.trainer_name
}
# you can set your own variable file e.g test.tfvars set variable value in that file and then provide var file name
# git pull ; terraform  init ; terraform apply -auto-approve -var-file test.tfvars
# if you create test.auto.tfvar file it will automatically pickup from that file
# git pull ; terraform init ; terraform apply -auto-approve # it will pick from auto.tvars automatically
# the auto.tfvars should be in the directory as main.tf



