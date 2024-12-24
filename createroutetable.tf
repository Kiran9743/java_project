# Create a route table to allow traffic from the subnet to the Internet Gateway
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"  # All outbound traffic
    gateway_id = aws_internet_gateway.main.id  # Route traffic to the Internet Gateway
  }

  tags = {
    Name = "main-route-table"
  }
}
