#################################
##			Variables		   ##
#################################
variable "access_key" {}
variable "secret_key" {}

#################################
##			Provider		   ##
#################################
provider "aws" {
	region = "eu-west-1"
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
}

resource "aws_instance" "chris-tf-test-1" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
