resource "aws_route_table" "dinky-lakhani-public-RT" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-062d32706637dd224"
  }


  tags = {
    Name = "Dinky-Lakhani-Public-RT"
  }
}

resource "aws_route_table" "dinky-lakhani-private-RT" {
  vpc_id = var.vpc_id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0db713d833be93ee6"
    #gateway_id = "igw-0d1d491f2bf37adec"      #********
  }

  tags = {
    Name = "Dinky-Lakhani-Private-RT"
  }
}