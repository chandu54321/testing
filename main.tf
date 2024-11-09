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