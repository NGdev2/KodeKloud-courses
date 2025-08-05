resource "aws_vpc" "datacenter" {
  assign_generated_ipv6_cidr_block = true
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "datacenter-vpc"
  }
}
