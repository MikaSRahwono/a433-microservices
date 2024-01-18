# Gunakan Node.js resmi sebagai image dasar
FROM node:14

# Tentukan direktori kerja di dalam kontainer
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Pasang paket yang diperlukan yang ditentukan di package.json
RUN npm install

# Salin sisa kode sumber aplikasi Anda dari sistem file host ke sistem file image.
COPY . .

# Informasikan Docker bahwa kontainer mendengarkan pada port yang ditentukan saat runtime.
EXPOSE 3001

# Jalankan aplikasi saat kontainer dimulai
CMD ["node", "index.js"]
