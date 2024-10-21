resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids =  ["sg-06f2d2482af60d937"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "frontend-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "mongodb-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "catalogue-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "redis-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "user-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "cart-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "mysql-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "shipping-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "rabbitmq-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-06f2d2482af60d937"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z034492616CL1VL5T8KC8"
  name    = "payment-dev.hptldevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}