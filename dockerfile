# Dockerfile
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the source code and Makefile to the container
COPY hello.c Makefile /app/

# Build the C code using the Makefile
RUN make

# Define the command to run when the Docker container starts
CMD ["./hello"]
