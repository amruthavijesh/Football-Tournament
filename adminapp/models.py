from django.db import models

# Create your models here.
class TeamRegistration(models.Model):
    TeamName=models.CharField(max_length=500)
    Coach=models.CharField(max_length=500)
    Contact=models.CharField(max_length=500)
    Manager=models.CharField(max_length=500)
    Goalkeeper=models.CharField(max_length=500)
    Centreback=models.CharField(max_length=500)
    Sweeper=models.CharField(max_length=500)
    Wingback=models.CharField(max_length=500)
    Fullback=models.CharField(max_length=500)
    Central=models.CharField(max_length=500)
    Attacking=models.CharField(max_length=500)
    Wide=models.CharField(max_length=500)
    Secondstriker=models.CharField(max_length=500)
    Centreforward=models.CharField(max_length=500)
    Winger=models.CharField(max_length=500)
    Substitute1=models.CharField(max_length=500)
    Substitute2=models.CharField(max_length=500)
    Substitute3=models.CharField(max_length=500)
    Substitute4=models.CharField(max_length=500)

class Venue(models.Model):
    VenueName=models.CharField(max_length=500)
    Location=models.CharField(max_length=500,default='')

class Dates(models.Model):
    Startdate = models.DateField(default=None)
    Enddate = models.DateField(default=None)

class Times(models.Model):
    Firstmatch = models.TimeField()
    Secondmatch = models.TimeField()

class Schedule(models.Model):
    Team1 = models.ForeignKey('TeamRegistration', related_name='team1_matches', on_delete=models.CASCADE,default=None)
    Team2 = models.ForeignKey('TeamRegistration', related_name='team2_matches', on_delete=models.CASCADE,default=None)
    Match_date = models.DateField(default=None)
    Match_time = models.TimeField(default=None)
    Venue = models.ForeignKey('Venue', on_delete=models.CASCADE,default=None) 


class Result(models.Model):
    Schedule=models.ForeignKey('Schedule',on_delete=models.CASCADE)
    TeamName1=models.CharField(max_length=500)
    TeamName2=models.CharField(max_length=500)
    TeamScore1=models.CharField(max_length=500)
    TeamScore2=models.CharField(max_length=500)
    Match_date = models.DateField(null=True, blank=True,default=None)
    Match_time = models.TimeField(null=True, blank=True,default=None)