resource "aws_security_group" "dbSG" {
  name        = "Dinky DB SG"
  description = "This is a Security Group for DB Tier"
  vpc_id      = var.vpc_id
  #count       = 2
  depends_on = [ #********
    aws_security_group.WebSG
  ]

  ingress {

    security_groups = [aws_security_group.WebSG.id]
    #cidr_blocks = ["0.0.0.0/0"]   #********
    description = "Allows 3306 from anywhere --- For MySQL/Aurora"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"

  }
  # ingress {
  #   cidr_blocks = ["0.0.0.0/0"]
  #   description = "Allows 22 from anywhere --- For SSH"
  #   from_port   = 22
  #   to_port     = 22
  #   protocol    = "tcp"

  # }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "For allowing all traffic out using all protocols, we need to set protocol = -1 and from_port = 0 as well as to_port=0"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = {
    Name = "Dinky-Lakhani-DB-SG"
  }
}