# Use the official Ubuntu 20.04 image as the base image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y wget curl git build-essential sudo

# Download and install gotty-remake
RUN wget https://github.com/yudai/gotty/releases/download/v2.0.0/gotty_linux_amd64.tar.gz && \
    tar -xvf gotty_linux_amd64.tar.gz && \
    mv gotty /usr/local/bin && \
    rm gotty_linux_amd64.tar.gz

# Expose the default gotty port
EXPOSE 8080

# Set up a default command to run gotty with bash
CMD ["gotty", "bash"]
