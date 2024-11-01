# Use an official base image
FROM ubuntu:20.04

# Set environment variables
ENV APP_HOME /app
WORKDIR $APP_HOME

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt