#VPC
resource "aws_vpc" "main" {
  cdir_block           = var.vpc_cdir
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = merge(
    var.vpc_tags,
    local.common_tags,
    {
      Name = local.common_name_suffix
    }
  )
}
