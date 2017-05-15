resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh_redis"
  description = "Allow inbound SSH traffic from my IP"

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["PUBLIC_ID/32"]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["VPC_SUBNET"]
  }

  egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

  tags {
    Name = "Allow SSH Redis"
  }
}
