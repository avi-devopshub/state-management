resource "aws_s3_bucket" "s3" {
    bucket_name = "avinash-s3-remotebackend-08092026"
    tags = {
        Name = "avinash-s3-remotebackend-08092026"
    }
}
#Public EC2
resource "aws_instance" "public_ec2" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    key_name = "hyderabad"
    tags = {
        Name = "public-ec2"
    }
    depends_on = [aws_s3_bucket.s3]
}