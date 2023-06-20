/*resource "aws_subnet" "dinky-lakhani-PubSub-1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet[0]
  availability_zone = var.azs[0]
  tags              = var.task_tags
}

resource "aws_subnet" "dinky-lakhani-PubSub-2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet[1]
  availability_zone = var.azs[1]
  tags              = var.task_tags
}*/

resource "aws_subnet" "dinkyPubSub" {
  count             = 2
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet[count.index]
  availability_zone = var.azs[count.index]
  tags = {
    Name = "Dinky-Lakhani-Public-Subnet"
  }
}