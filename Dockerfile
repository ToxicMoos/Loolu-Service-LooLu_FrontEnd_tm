# Используем базовый образ Node.js
FROM node:14

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь код в контейнер
COPY . .

# Указываем команду для запуска приложения
CMD ["node", "app.js"]

# Указываем порт, который будет использоваться приложением
EXPOSE 3000
