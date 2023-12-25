resource "aws_vpc" "vpc_ansible_test" {
  provider   = aws.oregon_region
  cidr_block = "192.168.1.0/24"
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-ansible-test"
  }
}
