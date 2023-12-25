resource "aws_internet_gateway" "ig_ansible_test" {
  provider = aws.oregon_region
  vpc_id   = aws_vpc.vpc_ansible_test.id
  tags = {
    Name = "ig-ansible-test"
  }
}