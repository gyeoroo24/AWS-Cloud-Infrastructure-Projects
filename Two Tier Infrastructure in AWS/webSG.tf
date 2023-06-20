resource "aws_security_group" "WebSG" {
  name        = "WebSG"
  description = "This is a Security Group for Web Tier"
  vpc_id      = var.vpc_id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allows 443 from anywhere --- For HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"

  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allows 80 from anywhere --- For HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"

  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allows 22 from anywhere --- For SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "For allowing all traffic out using all protocols, we need to set protocol = -1 and from_port = 0 as well as to_port=0"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = {
    Name = "Dinky-Lakhani-Web-SG"
  }
}