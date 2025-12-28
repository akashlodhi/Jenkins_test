variable "instance_type" {
    default = "t2.medium"
    description = "EC2 instance type"
}

variable "aws_region" {
    default = "ap-south-1"
    description = "region name"
}

variable "aws_key_pair" {
    default = "stark_jenkins"
    description = " Key pair"
}