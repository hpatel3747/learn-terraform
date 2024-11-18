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

resource "aws_subnet" "pub-subnet-01" {
  vpc_id     = aws_vpc.hptl-vpc-01.id
  cidr_block = "10.0.0.0/26"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pub-subnet-01"
  }
}
resource "aws_subnet" "pub-subnet-02" {
  vpc_id     = aws_vpc.hptl-vpc-01.id
  cidr_block = "10.0.0.64/26"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pub-subnet-02"
  }
}
resource "aws_subnet" "pri-subnet-01" {
  vpc_id     = aws_vpc.hptl-vpc-01.id
  cidr_block = "10.0.0.128/26"
  availability_zone = "us-east-1c"
  tags = {
    Name = "pri-subnet-01"
  }
}
resource "aws_subnet" "pri-subnet-02" {
  vpc_id     = aws_vpc.hptl-vpc-01.id
  cidr_block = "10.0.0.192/26"
  availability_zone = "us-east-1d"
  tags = {
    Name = "pri-subnet-02"
  }
}
resource "aws_internet_gateway" "hptl-gw" {
  vpc_id = aws_vpc.hptl-vpc-01.id

  tags = {
    Name = "hptl-gw"
  }
}