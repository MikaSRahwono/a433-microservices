#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t order-service .

# Menampilkan daftar Docker images yang tersedia di lokal
docker images

# Login ke GitHub Package
echo "Masukkan GitHub Personal Access Token:"
read -s PAT
echo $PAT | docker login ghcr.io -u mikasrahwono --password-stdin

# Push image ke GitHub Package
docker tag order-service:latest ghcr.io/mikasrahwono/order-service:latest
docker push ghcr.io/mikasrahwono/order-service:latest