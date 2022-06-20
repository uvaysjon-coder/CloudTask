## Mandatory Task
### 1.I’ve signed up to AWS
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture1.png)

### 2.I’ve created budget and alert 
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture2.png)

### 3.I’ve created two EC2 Instance t2.micro with different operating systems (AmazonLinux/Ubuntu)
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture3.png)

### 4.I’ve connected to Ubuntu and Amazon Linux Servers through Putty using Public Ip and hostname
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture4.png)
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture5.png)

### 5.After that I’ve checked ping and SSH connection
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture6.png)
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture7.png)

#### And connected between two instances through ssh<br>
#### I’ve used private key<br>
#### And give permission for the files<br>
#### chmod 400 Ubuntu_Server.pem for Ubuntu Server<br>
#### chmod 400 Amazon_Linux_Server.pem<br>
#### ssh -i "Ubuntu_Server.pem" ubuntu@ec2-34-230-81-160.compute-1.amazonaws.com<br>
#### ssh -i "Amazon_Server.pem" ec2-user@ec2-18-234-143-186.compute-1.amazonaws.com<br>

### 6.I’ve installed Apache Server in Amazon_Linux_Server
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture8.png)

### 7.I’ve created web page with the text “Hello World” and additional information about OS version, free disk space, free/used memory in the system and about all running processes
#### I’ve used commands:<br>
#### 1) uname -a<br>
#### 2) df -h<br>
#### 3) free -h<br>
#### cd /var/www/html/<br>
#### touch index.html<br>
#### sudo nano index.html<br>
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture9.png)

### 8.And I’ve checked through my browser http://18.234.143.186
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture10.png)

## Extra Task

### 1.Firstly I’ve created VPC by giving name my_network_vpc
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture11.png)

### 2.After that I’ve created Internet Gateway and attached to my_network_vpc
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture12.png)
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture13.png)

### 3.I’ve created two public Subnets
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture14.png)
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture15.png)

### 4.After that I’ve enabled auto-assign Public IP	
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture17.png)

### 5. I’ve created Routing table for Public subnets by giving destination IP address  0.0.0.0/0 to my_network_IGW
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture18.png)

### 6.After that I’ve created two Private Subnets
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture19.png)

### 7.I’ve created routing Table for Private subnets and associated
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture20.png)

### 8.I’ve created Database Subnet A and Database Subnet B
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture21.png)

### 9.I’ve created Route Table for Database Subnets and associated them
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture22.png)
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture23.png)

### 10.After that I’ve Created NAT Gateway for which gives cloud resources without public IP addresses access to the internet without exposing those resources to incoming internet connections. And assigned Elastic IP. Also separated route tables and associated them with Private Subnets.
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture24.png)

### 11.Then I’ve created Security group SSH_Acces_For_Bastion
![alt text](https://github.com/uvaysjon-coder/CloudTask/blob/main/images/Picture25.png)

### 12.From Create Auto Scaling Group created a new lunch configuration for Bastion so instances can communicate each other

### 13.After that i've terminated and Created two instances with VPC which I've created my_network_vpc and checked ping and ssh connection

### 14.I wrote BASH script for installing web server (nginx/apache) and creating web pages with text “Hello World”, and information about OS version [link](https://github.com/uvaysjon-coder/CloudTask/blob/main/extra_task/my_shell.sh)

### 15.To Run step.6 without “manual” EC2 SSH connection I've cused Cloud Front and created yaml file to Automate tasks [link](https://github.com/uvaysjon-coder/CloudTask/blob/main/extra_task/CloudFormation-VPC.yaml)

### 16.I've created S3 bucket [uvays-cloudfront-bucket](https://uvays-cloudfront-bucket.s3.amazonaws.com/index.html) and uploaded scrrenshots of my Tasks so in order to make it public I wrote policy JSON
<pre>
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::uvays-cloudfront-bucket/*"
        }
    ]
} </pre>









