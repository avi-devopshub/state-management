#Public EC2
resource "aws_instance" "public_ec2" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    key_name = "hyderabad"
    count = 2
    tags = {
        Name = "public-ec2"
    }
}