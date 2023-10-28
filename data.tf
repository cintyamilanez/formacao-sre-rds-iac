data "aws_vpc" "wordpress_vpc" {
  filter {
    name   = "tag:Name"
    values = var.vpc_name
  }
}

data "aws_subnet" "wordpress_private_subnet_1" {
  filter {
    name   = "cidr-block"
    values = ["${var.private_subnets[0]}"]
  }
}

data "aws_subnet" "wordpress_private_subnet_2" {
  filter {
    name   = "cidr-block"
    values = ["${var.private_subnets[1]}"]
  }
}