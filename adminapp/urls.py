from django.urls import path
from adminapp import views 
app_name='adminapp'
urlpatterns=[
    path('adminindex',views.adminindex,name='adminindex'),
    path('login',views.login,name='login'),
]