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
