# Use the official Alpine image from the Docker Hub
FROM alpine:latest

# Install OpenSSL and zlib
RUN apk update && \
    apk add --no-cache openssl zlib

# Verify the installation
RUN openssl version && \
    ls /usr/lib/libz.so*

# Set the default command to run when the container starts
CMD ["sh"]
