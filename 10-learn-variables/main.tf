variable "env" {}
variable "db_instances" {}
variable "domain_name" {}
variable "zone_id" {}

env         = "dev"
domain_name = "hptldevops.online"
zone_id     = "Z034492616CL1VL5T8KC8"

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

db_instances = {
  mongodb = {
    app_port      = 27017
    instance_type = "t3.small"
  }

  redis = {
    app_port      = 6379
    instance_type = "t3.small"
  }

  rabbitmq = {
    app_port      = 5672
    instance_type = "t3.small"
  }

  mysql = {
    app_port      = 3306
    instance_type = "t3.small"
  }
}

output "value_1" {
  value = var.env
}
output "value_2" {
  value = var.map1["aws"]["trainer"]
}
output "value_3" {
  value = var.db_instances[each]
}

