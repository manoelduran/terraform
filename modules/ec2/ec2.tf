variable "ec2name" {
  type = string
}

resource "aws_instance" "ec2" {
  ami = "ami-0cb91c7de36eed2cb"
  instance_type = "t2.micro"
  tags = {
    Name = var.ec2name
  }
}

output "instance_id" {
    value = aws_instance.ec2.id
}