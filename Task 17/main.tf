provider "aws"{
  alias = "region1"
  region = "us-east-1"
}
provider "aws"{
  alias = "region2"
  region = "ap=south-1"
}
resource "aws_instance" "Instance1"{
   provider = aws.region1

   ami= "ami-04a81a99f5ec58529"
   instance_type = "t2.micro"

   tags={
     Name= "Task17TI1"
}
}
resource "aws_instance" "Instance2"{
   provider = aws.region2

   ami= "ami-0ad21ae1d0696ad58"
   instance_type = "t2.micro"

   tags={
     Name= "Task17TI2"
}
}
