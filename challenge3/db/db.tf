resource "aws_instance" "db" {
    ami = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}