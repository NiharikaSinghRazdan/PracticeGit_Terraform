provider "aws"{
    profile = var.profile
    region=var.region
}
resource "aws_instance" "FirstInstance"{
    ami= var.ami
    instance_type= var.instance
    key_name="AnsibleKeyPair"
  #  vpc_security_group_ids=[data.aws_security_group.Port80and22.id]
    tags= {
    Name="FirstInstance1"
}
}