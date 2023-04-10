# Используем NodeJS версии 14.x.x
FROM node:14

# Создаем директорию приложения внутри контейнера
WORKDIR /app

# Копируем файлы package.json и yarn.lock внутрь контейнера
COPY package.json yarn.lock /app/

# Устанавливаем зависимости приложения
RUN yarn install --frozen-lockfile

# Копируем все файлы из текущего каталога внутрь контейнера
COPY ./ /app/

# Собираем приложение
RUN yarn build

# Указать нужные переменные окружения
ENV HOST 0.0.0.0
ENV NODE_ENV production

# Указываем порт, на котором будет работать приложение
EXPOSE 3000

# Запускаем приложение
CMD ["yarn", "start"]