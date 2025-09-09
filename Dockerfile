FROM stackexchange/dnscontrol:latest

# Set working directory
WORKDIR /app

# Copy DNS configuration
COPY dnsconfig.js /app/
COPY creds.json /app/

# Default command
CMD ["dnscontrol", "push"]
