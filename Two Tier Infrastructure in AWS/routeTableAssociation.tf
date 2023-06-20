resource "aws_route_table_association" "publicRTAssociation" {
  count          = length(var.public_subnet)
  route_table_id = aws_route_table.dinky-lakhani-public-RT.id
  subnet_id      = aws_subnet.dinkyPubSub[count.index].id


}

resource "aws_route_table_association" "privateRTAssociation" {
  count          = length(var.private_subnet)
  route_table_id = aws_route_table.dinky-lakhani-private-RT.id
  subnet_id      = aws_subnet.dinkyPrivSub[count.index].id

}