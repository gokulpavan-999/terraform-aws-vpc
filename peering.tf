resource "aws_vpc_peering_connection" "default" {
  count = var.is_peering_required ? 1 : 0
  peer_vpc_id = data.aws_vpc.default.id # acceptor
}
