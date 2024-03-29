# Use Ubuntu as the base image
FROM centos:latest

# Update package lists
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    # Add your desired packages here
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Define a default command to run when the container starts
CMD ["/bin/bash"]
