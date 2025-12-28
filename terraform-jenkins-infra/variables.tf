variable "aws_region" {
    description = "AWS region"
    default = "ap-south-1"
}

variable "instance_type" {
    description = "ec2 Instance type"
    default = "t2.medium"
}

variable "key_Pair"{
    description = "key_Pair"
    default = "stark_jenkins"
}