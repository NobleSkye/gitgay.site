#!/bin/bash

# DNSControl deployment script for Coolify
set -e

echo "🚀 Starting DNSControl deployment..."

# Check if credentials exist
if [ ! -f "creds.json" ]; then
    echo "❌ creds.json not found. Please create it from creds.json.example"
    exit 1
fi

# Validate DNS configuration
echo "🔍 Validating DNS configuration..."
docker run --rm -v "$(pwd):/app" stackexchange/dnscontrol:latest dnscontrol check

# Preview changes
echo "👁️  Previewing DNS changes..."
docker run --rm -v "$(pwd):/app" stackexchange/dnscontrol:latest dnscontrol preview

# Apply changes
echo "✅ Applying DNS changes..."
docker run --rm -v "$(pwd):/app" stackexchange/dnscontrol:latest dnscontrol push

echo "🎉 DNS deployment completed successfully!"
