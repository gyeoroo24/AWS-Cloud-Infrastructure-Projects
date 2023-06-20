
/*resource "aws_subnet" "dinky-lakhani-PrivSub-1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet[0]
  availability_zone = var.azs[0]
  tags              = var.task_tags
}

resource "aws_subnet" "dinky-lakhani-PrivSub-2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet[1]
  availability_zone = var.azs[1]
  tags              = var.task_tags
}*/

resource "aws_subnet" "dinkyPrivSub" {
  count             = 2
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet[count.index]
  availability_zone = var.azs[count.index]
  tags = {
    Name = "Dinky-Lakhani-Private-Subnet"
  }
}


