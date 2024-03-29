# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package lists
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    # Add your desired packages here
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the script into the image
COPY bootstrap.sh /usr/local/bin/

# Make the script executable
RUN chmod +x /usr/local/bin/bootstrap.sh

# Define a default command to run when the container starts
CMD ["bootstrap.sh"]
