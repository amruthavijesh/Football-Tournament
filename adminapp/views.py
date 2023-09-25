from django.shortcuts import render
from adminapp.models import Venue,Dates,Times,Schedule,Result
from django.urls import reverse
from django.http import HttpResponse
from datetime import datetime
# Create your views here.

def login(request):
    if request.method=='POST':
        username=request.POST.get('name')
        password=request.POST.get('password')
        if username=='admin' and password=='1234':
            url = reverse('adminapp:adminindex')
            return HttpResponse(f'<script>alert("success"); window.location.href="{url}";</script>')
        else:
            url = reverse('adminapp:login')
            return HttpResponse(f'<script>alert("Incorrect data"); window.location.href="{url}";</script>')
    return render(request, 'adminapp/login.html')       
def adminindex(request):
    schedule=Schedule.objects.all()
    if request.method == 'POST':
        if 'venuename' in request.POST:
            Venue.objects.create(
                VenueName=request.POST.get('venuename'),
                Location=request.POST.get('location')
            )
            url = reverse('adminapp:adminindex')
            return HttpResponse(f'<script>alert("Venue added"); window.location.href="{url}";</script>')
        elif 'startdate' in request.POST:
            Dates.objects.create(
                Startdate=request.POST.get('startdate'),
                Enddate=request.POST.get('enddate')
            )
            url = reverse('adminapp:adminindex')
            return HttpResponse(f'<script>alert("Dates added"); window.location.href="{url}";</script>')
        elif 'firstmatch' in request.POST:
            Times.objects.create(
                Firstmatch=request.POST.get('firstmatch'),
                Secondmatch=request.POST.get('secondmatch')
            )
            url = reverse('adminapp:adminindex')
            return HttpResponse(f'<script>alert("Time added"); window.location.href="{url}";</script>')
        elif 'team1name' in request.POST:
            match_date_str = request.POST.get('matchdate')
            match_time = request.POST.get('matchtime')
            match_date = datetime.strptime(match_date_str, '%b. %d, %Y')
            
            schedule = Schedule.objects.get(Match_date=match_date, id=match_time)
            Result.objects.create(
                Schedule=schedule,
                TeamName1=request.POST.get('team1name'),
                TeamName2=request.POST.get('team2name'),
                TeamScore1=request.POST.get('team1score'),
                TeamScore2=request.POST.get('team2score'),
                Match_date=schedule.Match_date,
                Match_time=schedule.Match_time,
            )
            url = reverse('adminapp:adminindex')
            return HttpResponse(f'<script>alert("Result added"); window.location.href="{url}";</script>')

    return render(request, 'adminapp/index.html',{'schedule':schedule})
