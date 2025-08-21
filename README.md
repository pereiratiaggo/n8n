# n8n - Docker Compose

## Install and Start

1. Clone
   > git clone https://github.com/pereiratiaggo/n8n

2. Copy .env file
   > cp .env.example .env

4. Pull images
   > docker compose pull

5. Build new image with the adjustments made in DOCKERFILE
   > docker compose build
   > or
   > docker compose build --no-cache

6. Start container
    > docker compose up
    > or
    > docker compose up -d

## Stop

1. Stop
   > docker compose down


## Remove data
1. Remove
    > docker compose down --volumes