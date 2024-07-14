provider "aws"{
  alias = "region1"
  region = var.aws_region_US
}
provider "aws"{
  alias = "region2"
  region = var.aws_region_IND
}
resource "aws_instance" "Instance1"{
   provider = aws.region1

   ami= var.ami_ID_1
   instance_type = var.instance_type

   tags={
     Name= "Task17TI1"
}
}
resource "aws_instance" "Instance2"{
   provider = aws.region2

   ami= var.ami_ID_2
   instance_type = var.instance_type

   tags={
     Name= "Task17TI2"
}
}
