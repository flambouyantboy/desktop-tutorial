pip install Django
mkdir "d:\rp-portfolio"
xcopy /E clubs_cms "d:\rp-portfolio"
cd "d:\rp-portfolio"
python -m pip install social-auth-app-django
python manage.py migrate
python manage.py makemigrations blog
python manage.py migrate
SET DJANGO_SUPERUSER_PASSWORD=@abcde098
python manage.py createsuperuser --noinput --username fb21 --email noreply.fb21@gmail.com
start cmd /k python manage.py runserver
start cmd /k python -m smtpd -n -c DebuggingServer localhost:1025