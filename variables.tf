# Network
variable "region" {
  type = string
}

variable "vpc_name" {
  type = list(string)
}

variable "subnet_azs" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

# RDS
variable "db_name" {
  type    = string
  default = "wordpress"
}

variable "allocated_storage" {
  type    = number
  default = 20
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "engine_version" {
  type    = string
  default = "8.0"
}

variable "instance_class" {
  type    = string
  default = "db.t2.micro"
}

variable "username" {
  type    = string
  default = "admin"
}

variable "password" {
  type    = string
  default = "password"
}

variable "parameter_group_name" {
  type    = string
  default = "default.mysql8.0"
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "mysql_port" {
  type    = number
  default = 3306
}