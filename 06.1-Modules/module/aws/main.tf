# Create a VPC, verify this code
resource "aws_vpc" "hptl-vpc-01" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name        = "hptl-vpc-01"
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_internet_gateway" "hptl-gw" {
  vpc_id = aws_vpc.hptl-vpc-01.id

  tags = {
    Name = "hptl-gw"
  }
}