resource "aws_security_group" "allow_tls" {
  name        = "allow_redis"
  description = "Allow redis inbound traffic"
  vpc_id      = var.VPC_ID

  ingress {
    description      = "redis from VPC"
    from_port        = 6379
    to_port          = 6379
    protocol         = "tcp"
    cidr_blocks      = [var.CIDR_BLOCK]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_redis"
  }
}