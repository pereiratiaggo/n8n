FROM n8nio/n8n:latest

# Instala Chromium e fontes básicas no Alpine
USER root
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# Define o path do Chromium para o puppeteer/html-pdf node
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

USER node