# enable this variable to deploy multiple ec2 instances with assiciated dns entries
# variable "instances" {
#   default = [
#     "test1",
#     "test2"
#   ]
# }

# this code will create one EC2 instance named docker and make DNS entry
variable "instances" {
  default = [
    "docker",
      ]
}

module "ec2" {
  count = length(var.instances)
  source = "./ec2"
  instance_name  = var.instances[count.index]
}

output "ip" {
  value = module.ec2
}

module "route53" {
  count = length(var.instances)
  source = "./route53"
  instance_name = var.instances[count.index]
  ip_address = module.ec2[count.index].ip_address
}


