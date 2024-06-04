# Use the official Alpine image
FROM ubuntu:latest

# Create app directory
WORKDIR /usr/src/app

# Install necessary dependencies
RUN sudo apt-get install -y sudo
RUN sudo apt install fortune-mod cowsay -y

# Copy the wisecow.sh script to the container
COPY . /usr/src/app

# Make the script executable
RUN chmod +x /wisecow.sh

# Expose the port on which the app runs
EXPOSE 4499

# Command to run the app
CMD ["/app/wisecow.sh"]
