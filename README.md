# Проект CI/CD системы
## Описание
Для создания CI/CD системы было взято простое микросервисное приложение:  
 - https://github.com/express42/search_engine_crawler
 - https://github.com/express42/search_engine_ui

## Как запустить проект
### Локальная работа с приложением
Для теста приложения на локальном компьютере выполните команды:
```
git submodule update \
mv Dockerfile-cralwer search_engine_crawler/Dockerfile \
mv Dockerfile-ui search_engine_ui/Dockerfile \
mv index.html search_engine_ui/ui/templates/index.html
```
И используйте **compose.yaml**.
