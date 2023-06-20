resource "aws_key_pair" "webKey" {
  key_name   = "Web Key"
  public_key = file("${path.module}/webKey.pub")
  tags = {
    "Name" = "Dinky-Lakhani-Web-Key"
  }
}

resource "aws_key_pair" "dbKey" {
  key_name   = "DB Key"
  public_key = file("${path.module}/dbKey.pub")
  tags = {
    "Name" = "Dinky-Lakhani-DB-Key"
  }
}