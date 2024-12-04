resource "aws_vpc" "webspp_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = var.vpc_name
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.webspp_vpc.id
  cidr_block = "20.40.1.0/25"
  tags = {
    "Name" = "Public-Subnet"
  }
}