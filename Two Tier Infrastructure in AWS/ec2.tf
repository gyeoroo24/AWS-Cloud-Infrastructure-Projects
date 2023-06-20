resource "aws_instance" "webEC2" {
  ami                         = var.ami_id
  count                       = var.countInstances
  associate_public_ip_address = true
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.webKey.key_name
  subnet_id                   = aws_subnet.dinkyPubSub[count.index].id
  vpc_security_group_ids      = [aws_security_group.WebSG.id]
  user_data                   = file("${path.module}/webUserData.sh")
  tags = {
    "Name" = "Dinky Lakhani"
    Owner  = "dinky.lakhani@intuitive.cloud"
  }
}

resource "aws_instance" "dbEC2" {
  ami                         = var.ami_id
  count                       = var.countInstances
  associate_public_ip_address = true
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.dbKey.key_name
  subnet_id                   = aws_subnet.dinkyPrivSub[count.index].id
  vpc_security_group_ids      = [aws_security_group.dbSG.id]
  user_data                   = file("${path.module}/dbUserData.sh")
  tags = {
    "Name" = "Dinky EC2"
    Owner  = "dinky.lakhani@intuitive.cloud"
  }
}