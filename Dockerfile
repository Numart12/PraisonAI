# Выкарыстоўваем афіцыйны Node.js вобраз
FROM node:18

# Дырэкторыя ў кантэйнеры
WORKDIR /app

# Капіруем package.json і lock
COPY package*.json ./

# Усталёўваем залежнасці
RUN npm install

# Капіруем астатнія файлы
COPY . .

# Будаўніцтва фронту
RUN npm run build

# Паказваем порт (той самы, што ў .env)
EXPOSE 3000

# Каманда запуску
CMD ["npm", "run", "preview"]