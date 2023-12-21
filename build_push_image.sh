#!/bin/bash

# Membuat Docker image dari Dockerfile dengan nama 'item-app' dan tag 'v1'
docker build -t item-app:v1

# Menampilkan daftar Docker images yang tersedia di lokal
docker images

# Langkah 3: Mengubah nama image untuk format GitHub Packages
docker tag item-app:v1 ghcr.io/mikasrahwono/item-app:v1

# Login ke GitHub Packages dengan Personal Access Token
echo "Masukkan PAT (Personal Access Token): "
read -s PAT
echo $PAT | docker login ghcr.io -u mikasrahwono --password-stdin

# Langkah 5: Push image ke GitHub Packages
docker push ghcr.io/mikasrahwono/item-app:v1
