# Coolify Configuration for DNSControl

## Environment Variables Needed:
# CF_ACCOUNT_ID=your-cloudflare-account-id
# CF_API_TOKEN=your-cloudflare-api-token

## For Manual Deployment:
# 1. Build the image: docker build -t gitgay-dns .
# 2. Run DNS check: docker run --rm -v $(pwd):/app -e CF_ID=$CF_ACCOUNT_ID -e CF_TOKEN=$CF_API_TOKEN gitgay-dns dnscontrol check
# 3. Run DNS push: docker run --rm -v $(pwd):/app -e CF_ID=$CF_ACCOUNT_ID -e CF_TOKEN=$CF_API_TOKEN gitgay-dns dnscontrol push

## For Coolify Deployment:
# 1. Set this repository as your Coolify source
# 2. Add the environment variables in Coolify
# 3. Use the Dockerfile for builds
# 4. Set up a scheduled task or webhook to run DNS updates

## Docker Commands:
# Check configuration: ./deploy-dns.sh
# Or use docker-compose: docker-compose up dnscontrol
