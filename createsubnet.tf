# Create a subnet within the VPC
resource "aws_subnet" "main" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"  # Change to your preferred AZ
  map_public_ip_on_launch = true

  tags = {
    Name = "main-subnet"
  }
}