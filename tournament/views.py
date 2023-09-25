from django.shortcuts import render,redirect
from adminapp.models import TeamRegistration,Schedule,Venue,Dates,Times,Result
from django.urls import reverse
from django.http import HttpResponse
from datetime import timedelta, date
from django.utils import timezone
# Create your views here.
def index(request):
    team=TeamRegistration.objects.all()
    return render(request,'tournament/index.html',{'team':team})
# Register a team
def teamregistration(request):
    schedule = Schedule.objects.all()  # Query existing schedule data
    team = TeamRegistration.objects.all()
    total_entries = TeamRegistration.objects.count()
    msg = "Sorry Registration Closed...." if total_entries >= 10 else ""

    if total_entries >= 10 and not Schedule.objects.exists():
        # Call the generate_first_round_schedule function
        generate_first_round_schedule(request)
        schedule = Schedule.objects.all()  
    if request.method=='POST':
        TeamRegistration.objects.create(
            TeamName=request.POST.get('teamname'),
            Coach=request.POST.get('coach'),
            Contact=request.POST.get('contact'),
            Manager=request.POST.get('manager'),
            Goalkeeper=request.POST.get('goalkeeper'),
            Centreback=request.POST.get('centreback'),
            Sweeper=request.POST.get('sweeper'),
            Wingback=request.POST.get('wingback'),
            Fullback=request.POST.get('fullback'),
            Central=request.POST.get('centralmidfielder'),
            Attacking=request.POST.get('attackingmidfielder'),
            Wide=request.POST.get('widemidfielder'),
            Secondstriker=request.POST.get('secondstriker'),
            Centreforward=request.POST.get('centreforward'),
            Winger=request.POST.get('winger'),
            Substitute1=request.POST.get('substitute1'),
            Substitute2=request.POST.get('substitute2'),
            Substitute3=request.POST.get('substitute3'),
            Substitute4=request.POST.get('substitute4'),
                )
        total_entries = TeamRegistration.objects.count()

        
        url = reverse('tournament:index')
        return HttpResponse(f'<script>alert("Registration Success."); window.location.href="{url}";</script>')   
    return render(request,'tournament/teamregistration.html',{'msg':msg,'team':team,'schedule':schedule})

def teamdetails(request,id):
    team=TeamRegistration.objects.all()
    teamdata=TeamRegistration.objects.get(id=id)
    return render(request,'tournament/teamdetails.html',{'teamdata':teamdata,'team':team})


def generate_first_round_schedule(request):
    dates=Dates.objects.get(id=1)
    times=Times.objects.get(id=1)
    start_date = dates.Startdate
    end_date = dates.Enddate
    first_match_time = times.Firstmatch
    second_match_time = times.Secondmatch

    
    predefined_venues = Venue.objects.all()

    # Calculate the number of teams and the number of days for the schedule
    teams = TeamRegistration.objects.all()
    num_teams = len(teams)
    num_days = (end_date - start_date).days + 1

    # Calculate matches per day (1 to 2 matches daily)
    matches_per_day = min(max(num_teams // num_days, 1), 2)

    # Create the schedule
    current_date = start_date
    current_match_time = first_match_time
    matches_created = 0

    while current_date <= end_date:
        # Create matches for the current date
        for _ in range(matches_per_day):
            if matches_created >= num_teams - 1:
                break  # All matches created
            # Fetch the venue for this match from the predefined venues
            venue = predefined_venues[matches_created % len(predefined_venues)]
            # Create a match record in the Schedule model
            match = Schedule(
                Team1=teams[matches_created],
                Team2=teams[matches_created + 1],
                Match_date=current_date,
                Match_time=current_match_time,
                Venue=venue,
            )
            match.save()
            matches_created += 2  # Move to the next pair of teams
            current_match_time = (
                second_match_time if current_match_time == first_match_time else first_match_time
            )

        # Move to the next day
        current_date += timezone.timedelta(days=1)

    return redirect('/teamregistration')
def fixturesandgoals(request):
    result=Result.objects.all()
    return render(request,'tournament/fixturesandgoals.html',{'result':result})