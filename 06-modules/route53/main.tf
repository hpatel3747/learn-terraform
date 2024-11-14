resource "aws_route53_record" "record" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "${var.instance_name}-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}

