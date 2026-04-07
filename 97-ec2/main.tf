resource "aws_instance" "workstation" {
    ami                 = "ami-0220d79f3f480ecf5"
    instance_type       = "t3.micro"
    user_data = file("bastion.sh")
    
      tags = {
        Name = "dockerfile"
        Project = "roboshop"
      }
}