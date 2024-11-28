variable "vpc_name" {
    type = string
    default = "example-vpc"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_azs" {
    type = list(string)
    default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "vpc_private_subnets" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_enable_nat_gateway" {
    type    = bool
    default = true
}

variable "vpc_tags" {
    type = map(string)
    default = {
        Terraform = "true"
        Environment = "dev"
    }
}

