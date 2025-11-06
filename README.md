# DEV-OPS-LR2 (Weather Report Script)
Этот проект содержит Bash-скрипт, который получает текущую температуру и влажность для заданного города, и автоматически обновляет страницу index.html веб-сервера nginx каждую минуту.

## Содержимое репозитория
 - weather.sh — основной скрипт, получает данные о погоде с wttr.in
 (в формате JSON) и формирует index.html.
 - index.html (127.0.0.1) — пример выходного файла, который отображается на веб-сайте nginx.
 - crontab.txt — настройки cron для автоматического запуска скрипта каждую минуту.

## Используемые технологии
 - Bash
 - jq — для парсинга JSON
 - nginx — для отображения результата
 - cron — для автоматического выполнения скрипта
## Пример результата
<img width="813" height="603" alt="image" src="https://github.com/user-attachments/assets/e85df9e5-f5a5-4eb0-9d0e-c2e801c8e38e" />
<img width="1061" height="806" alt="image" src="https://github.com/user-attachments/assets/5ab8b62a-26a4-43cd-9d99-39f399970142" />

Выполнил Орлов Артём
