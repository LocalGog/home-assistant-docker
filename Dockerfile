# Базовий образ Home Assistant
FROM ghcr.io/home-assistant/home-assistant:stable

# Копіюємо нашу конфігурацію у внутрішню папку контейнера
COPY config /config

# Відкриваємо стандартний порт
EXPOSE 8123

# Запускаємо Home Assistant
CMD [ "python", "-m", "homeassistant", "--config", "/config" ]
