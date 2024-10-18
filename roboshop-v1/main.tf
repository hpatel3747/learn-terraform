resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids =  [sg-0f538d9ce9c907af2]
  tags = {
    Name = "frontend"
  }
}