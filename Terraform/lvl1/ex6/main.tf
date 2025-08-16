resource "aws_eip" "xfusion" {
  domain = "vpc"

  tags = {
    Name = "xfusion-eip"
  }
}


output "eip_public_ip" {
  value = aws_eip.xfusion.public_ip
}
