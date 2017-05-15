output "public_ip_redis01" {
  value = "${aws_instance.redis01.public_ip}"
}

output "public_ip_redis02" {
  value = "${aws_instance.redis02.public_ip}"
}

output "public_ip_redis03" {
  value = "${aws_instance.redis03.public_ip}"
}

output "private_ip_redis01" {
  value = "${aws_instance.redis01.private_ip}"
}

output "private_ip_redis02" {
  value = "${aws_instance.redis02.private_ip}"
}

output "private_ip_redis03" {
  value = "${aws_instance.redis03.private_ip}"
}