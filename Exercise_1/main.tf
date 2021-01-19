# TODO: Designate a cloud provider, region, and credentials


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2


# TODO: provision 2 m4.large EC2 instances named Udacity M4
provider "aws" {
  access_key = "<Your-Access-Key>"
  secret_key = "<Your-Secret-Key>"
  region = "us-east-1"
}

resource "aws_instance" "UdacityT2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  subnet_id = "subnet-0034d46215de5c880"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity T2"
  }
}

# resource "aws_instance" "UdacityM4" {
#   count = "2"
#   ami = "ami-0323c3dd2da7fb37d"
#   subnet_id = "subnet-0034d46215de5c880"
#   instance_type = "m4.large"
#   tags = {
#     name = "Udacity M4"
#   }
# }