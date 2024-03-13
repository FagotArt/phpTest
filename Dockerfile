#Пересборка и старт контейнера:
#docker build -t my-php-app .
#docker run -p 8282:8282 -v $(pwd):/var/www/html  my-php-app


# Используем образ PHP 8.3 с поддержкой CLI и FPM
FROM php:8.3-cli

# Устанавливаем рабочую директорию в контейнере
WORKDIR /var/www/html

# Копируем скрипты PHP в рабочую директорию
COPY . /var/www/html

# Открываем порт 8181
EXPOSE 8282

# Запускаем встроенный в PHP веб-сервер на всех интерфейсах
CMD [ "php", "-S", "0.0.0.0:8282" ]
