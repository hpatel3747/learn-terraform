#data sources fetch values from the cloud provider
resource "aws_instance" "test" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.sg.id]
  tags = {
    Name = "test"
  }
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}

data "aws_security_group" "sg" {
  name = "default"
  id = "sg-06f2d2482af60d937"
}