#!/bin/bash

# Останавливаем выполнение скрипта при любой ошибке
set -e

# Инициализация и обновление субмодулей
echo "Инициализация и обновление субмодулей..."
cd search_engine_crawler/ && git submodule init && git submodule update && cd ..
cd search_engine_ui/ && git submodule init && git submodule update && cd ..

# Перемещение файлов
echo "Перемещение файлов..."
cp submodule_updates/search_engine_crawler/Dockerfile search_engine_crawler/Dockerfile
cp submodule_updates/search_engine_ui/Dockerfile search_engine_ui/Dockerfile
cp submodule_updates/search_engine_ui/index.html search_engine_ui/ui/templates/index.html

# Проверяем успешность перемещения
if [ $? -eq 0 ]; then
    echo "Файлы успешно перемещены."
else
    echo "Ошибка при перемещении файлов."
    exit 1
fi

echo "Скрипт выполнен успешно."
