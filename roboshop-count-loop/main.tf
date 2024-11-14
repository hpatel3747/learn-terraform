variable "instances" {
  default = [
    "frontend",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "mysql",
    "mongodb",
    "rabbitmq",
    "redis"
  ]
}

resource "aws_instance" "instance" {
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = var.instances[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "${var.instances[count.index]}-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}

