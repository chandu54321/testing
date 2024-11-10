# vpc.tf
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"  # Adjust CIDR block as needed
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "MyVPC"
    Environment = "dev"
  }
}
resource "aws_subnet" "first" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.main.id
  tags = {
    Name = "web-1"
  }

}