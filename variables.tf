variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
    default = "us-east-1"
}
variable "aws_ami" {
  description = "The AWS AMI to use."
  default = "ami-80861296"
}