
# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan environment production dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi pada 8080
EXPOSE 8080

# Jalankan server saat container diluncurkan
CMD ["npm", "start"]