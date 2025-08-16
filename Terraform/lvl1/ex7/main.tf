############################################
# 1) Clé RSA + KeyPair xfusion-kp
############################################
resource "tls_private_key" "xfusion" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "xfusion" {
  key_name   = "xfusion-kp"
  public_key = tls_private_key.xfusion.public_key_openssh
}

############################################
# 2) VPC par défaut + SG "default"
############################################
data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

############################################
# 3) Instance EC2
############################################
resource "aws_instance" "xfusion" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.xfusion.key_name
  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = {
    Name = "xfusion-ec2"
  }
}
