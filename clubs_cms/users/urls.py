from django.urls import re_path
from users.views import dashboard
from django.conf.urls import include
from users.views import dashboard, register

urlpatterns = [
    re_path(r"^accounts/", include("django.contrib.auth.urls")),
    re_path(r"^dashboard/", dashboard, name="dashboard"),
    re_path(r"^oauth/", include("social_django.urls")),    
    re_path(r"^register/", register, name="register"),
]
