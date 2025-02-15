provider "aws"{
   region  = "ap-south-1" 
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami = "ami-0087386981ef29ffa"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name        = "karthikdevops"
     tags = {
        Name = "tomcatserver"
     }
}

