# Use Ubuntu as the base image
FROM centos:latest

# Update package lists
RUN apt-get update && yum upgrade -y && yum install -y 

# Define a default command to run when the container starts
CMD ["/bin/bash"]
