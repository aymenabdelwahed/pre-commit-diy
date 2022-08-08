terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}
provider “aws” {
    region = “us-west-1”
}
 
resource “aws_instance” “myec2” {
    ami = “ami-12345qwert”
    instance_type = “t2.micro”
     tags = {
   name = "Demo System"
 }
}