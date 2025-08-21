FROM n8nio/n8n:latest

# Install Chromium and basic fonts on Alpine
USER root
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# Set Chromium path for Puppeteer / HTML-PDF node
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

# Install community nodes
# Important: run as `node` user, inside /home/node
USER node
WORKDIR /home/node

RUN mkdir -p /home/node/.n8n/nodes \
    && cd /home/node/.n8n/nodes \
    # Initialize package.json (required for npm install)
    && npm init -y \
    # Install selected community nodes
    && npm install --omit=dev \
        n8n-nodes-globals \
        n8n-nodes-datastore \
        n8n-nodes-puppeteer \
        n8n-nodes-htmlpdf-converter \
        n8n-nodes-webpage-content-extractor
