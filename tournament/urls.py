from django.urls import path
from tournament import views 

app_name='tournament'
urlpatterns=[
    path('',views.index,name='index'),
    path('teamregistration',views.teamregistration,name='teamregistration'),
    path('teamdetails/<int:id>',views.teamdetails,name='teamdetails'),
    path('generate_schedule/', views.generate_first_round_schedule, name='generate_schedule'),
    path('fixturesandgoals',views.fixturesandgoals,name='fixturesandgoals'),
]