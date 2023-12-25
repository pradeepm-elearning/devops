resource "aws_subnet" "subnet_ansible_test" {
  provider   = aws.oregon_region
  vpc_id     = aws_vpc.vpc_ansible_test.id
  cidr_block = aws_vpc.vpc_ansible_test.cidr_block
  tags = {
    Name = "subnet-ansible-test"
  }
}
