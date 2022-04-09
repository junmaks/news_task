# news_task

BACKEND

Добавить нужную конфигурацию в файл /backend/news_project/start_script.sh
PGUSER - user-postgress
PGHOST=localhost - host бд
PGPASSWORD=123 пароль бд
PGDATABASE=news_db название бд
PGPORT=5432 порт бд
PORT=5050 порт запуска сервера
HOST=localhost - хост

Создать базу данных и залить готовый дамп (Находится в /backend/news_project/)
psql news_db < news_backup.sql

Далее в консоли запустить этот скрипт
. start_script.sh

FRONTEND

Перейти в frontend

Далее:
npm install
npm run serve

При необходимости поменять путь до бэкенда в фале frontend/srs/routers_api/config.json

Далее перейти по http://localhost:8080/
