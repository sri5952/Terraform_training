terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region = var.regions
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block

  tags = {
    Name = "terraformvpc"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = var.publicsubnet-a
  availability_zone = var.zone-a

  tags = {
    Name = "Public-subnet-a"
  }
}

resource "aws_route_table" "route-a" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "Route-table-a"
  }
}

resource "aws_route" "a" {
  route_table_id = aws_route_table.route-a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}


resource "aws_route_table_association" "asscociation-a" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.route-a.id
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "terraformvpcigw"
  }
}



resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = var.privatesubnet-a
  availability_zone = var.zone-a

  tags = {
    Name = "Priavte-subnet-a"
  }
}


resource "aws_route_table" "route-b" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "Route-table-b"
  }
}




resource "aws_route_table_association" "asscociation-b" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.route-b.id
}


resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = var.publicsubnet-b
  availability_zone = var.zone-b

  tags = {
    Name = "Public-subnet-2a"
  }
}


resource "aws_route_table" "route-2a" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "Route-table-2a"
  }
}

resource "aws_route" "routeattachment-2a" {
  route_table_id = aws_route_table.route-2a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}


resource "aws_route_table_association" "asscociation-2a" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.route-2a.id
}


resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = var.privatesubnet-b
  availability_zone = var.zone-b

  tags = {
    Name = "Private-subnet-2a"
  }
}


resource "aws_route_table" "route-2b" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "Route-table-2b"
  }
}


resource "aws_route_table_association" "asscociation-2b" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.route-2b.id
}
