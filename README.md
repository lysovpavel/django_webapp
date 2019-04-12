# Установка

```bash
git clone <GIT-РЕПОЗИТОРИЙ_ВАШЕГО_ПРОЕКТА>

cd <НАЗВАНИЕ_ВАШЕГО_ПРОЕКТА>
```

Переключаемся на ветку `staging`

```bash
git checkout staging

git push -u origin staging
```

Копируем файл `example.env` в файл `.env`

```bash
cp example.env .env
```

Редактируем файл `.env` и изменяем `SECRET_KEY` на любой набор символов, например, название сайта.
Все остальные параметры можно не трогать.

Устанавливаем виртуальное окружение

```bash
virtualenv -p python3.6 venv
```

Поднимаем базу данных и redis с помощью докера

```bash
docker-compose up -d
```

Активируем виртуальное окружение

```bash
source venv/bin/activate
```

Устанавливаем зависимости, применяем миграции

```bash
pip install -r requirements.txt

python backend/manage.py migrate
```

Создаем суперпользователя следующей командой и отвечаем на вопросы, которые задаст система

```bash
python backend/manage.py createsuperuser
```

Запускаем сервер

```bash
python backend/manage.py runserver
```

Заходим в админку http://localhost:8000/admin/ с только что созданными логином и паролем.

Переходим в раздел Сайты http://localhost:8000/admin/sites/site/ и изменяем запись `example.com`
на `localhost:8000`.

Создать страницу с Названием "Главная", указать ей пустой ЧПУ.

# Разработка

Поднимаем базу данных и redis с помощью докера

```bash
docker-compose up -d
```

Активируем виртуальное окружение

```bash
source venv/bin/activate
```

Устанавливаем зависимости, применяем миграции

```bash
pip install -r requirements.txt

python backend/manage.py migrate
```

Запускаем сервер

```bash
python backend/manage.py runserver
```

## Разработка фронтенда

Разработка ведется в директории `frontend/src/app/src/`.

Сборка производится в директории `frontend/src/app/`:

```bash
npm i
npm run dev
```

ВНИМАНИЕ! Путь подключаемого файла в html менять не надо!

Если необходимо собрать стили в минифицированном виде, то используем команду

```bash
npm run build
```

Чтобы посмотреть в браузере, идем по ссылке http://localhost:8000/

### Кратко о структуре

Когда необходимо разбить проект на страницы, которые в нем должно быть - зовем бэкендщика, чтобы он это произвел.

Все уникальные страницы хранятся в директории `frontend/templates/pages/`

## Разработка бэкенда

Разработка ведется в директории `backend/`, шаблоны лежат в директории `frontend/templates`.

Чтобы запустить `celery` (необходим для запуска задач по расписанию), используйте команду

```bash
celery -A app worker -B
```


