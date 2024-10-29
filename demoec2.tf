provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "awsec2" {
    ami = "ami-04708942c263d8190"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform script"
    }
  
}
resource "aws_eip" "Elasticipdemo" {
    instance = aws_instance.awsec2.id
  
}