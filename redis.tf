resource "aws_instance" "redis01" {
  ami           = "${var.aws_ami}"
  instance_type = "t2.medium"
  availability_zone = "us-east-1a"
  root_block_device {
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  key_name = "${var.aws_keypair}"
  tags {
    Name = "redis-01"
  }
}

resource "aws_instance" "redis02" {
  ami           = "${var.aws_ami}"
  instance_type = "t2.medium"
  availability_zone = "us-east-1b"
  root_block_device {
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  key_name = "${var.aws_keypair}"
  tags {
    Name = "redis-02"
  }
}

resource "aws_instance" "redis03" {
  ami           = "${var.aws_ami}"
  instance_type = "t2.medium"
  availability_zone = "us-east-1c"
  root_block_device {
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  key_name = "${var.aws_keypair}"
  tags {
    Name = "redis-03"
  }
}

resource "aws_eip" "redis01" {
  instance = "${aws_instance.redis01.id}"
}

resource "aws_eip" "redis02" {
  instance = "${aws_instance.redis02.id}"
}

resource "aws_eip" "redis03" {
  instance = "${aws_instance.redis03.id}"
}
