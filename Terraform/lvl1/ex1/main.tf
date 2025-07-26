resource "tls_private_key" "datacenter" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "datacenter" {
  key_name   = "datacenter-kp"
  public_key = tls_private_key.datacenter.public_key_openssh
}

resource "local_file" "save_private_key" {
  content  = tls_private_key.datacenter.private_key_pem
  filename = "/home/bob/datacenter-kp.pem"
  file_permission = "0400"
}
