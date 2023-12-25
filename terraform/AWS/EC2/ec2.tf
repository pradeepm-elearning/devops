resource "aws_instance" "ec2_ansible_test" {
  provider = aws.oregon_region
  ami = "ami-01450e8988a4e7f44"
  instance_type = "t3.micro"
  tags = {
    Name = "ec2-ansible_test"
    Description = "This instance was created using Terraform for Ansible Testing"
  }
  vpc_security_group_ids = [aws_security_group.sg_ansible_test.id]
  key_name = aws_key_pair.kp_ansible_test.key_name
  subnet_id = aws_subnet.subnet_ansible_test.id
  associate_public_ip_address = true
}
