#Kubeadm Nodes
resource "aws_instance" "kubeadm-node-1" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1a"
  instance_type               = "t3.medium"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "kubeadm-node01"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}

resource "aws_instance" "kubeadm-node-2" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1b"
  instance_type               = "t3.medium"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet2-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "kubeadm-node02"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}

resource "aws_instance" "kubeadm-node-3" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1c"
  instance_type               = "t3.medium"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet3-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "kubeadm-node03"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
    EOF
  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    delete_on_termination = true
  }
}

