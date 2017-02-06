# Docker DevOps Tools

Simple Docker File used for Devops/Sysops instead of Vagrant.

One of the major problems for a consultant is you may be managing different AWS accounts and you will have multiple API keys.

This tool allows you to easily get around this problem in addition to segment your API keys


1. Create a folder for each client or AWS Account

2. Build dockerfile 

3. Launch docker image 

docker run -it --name [client1] -v [/path/to/].aws:/root/.aws  -d devops or buildname

