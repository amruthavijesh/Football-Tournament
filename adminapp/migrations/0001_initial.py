# Generated by Django 4.1.3 on 2023-09-25 05:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Dates",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("Startdate", models.DateField(default=None)),
                ("Enddate", models.DateField(default=None)),
            ],
        ),
        migrations.CreateModel(
            name="TeamRegistration",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("TeamName", models.CharField(max_length=500)),
                ("Coach", models.CharField(max_length=500)),
                ("Contact", models.CharField(max_length=500)),
                ("Manager", models.CharField(max_length=500)),
                ("Goalkeeper", models.CharField(max_length=500)),
                ("Centreback", models.CharField(max_length=500)),
                ("Sweeper", models.CharField(max_length=500)),
                ("Wingback", models.CharField(max_length=500)),
                ("Fullback", models.CharField(max_length=500)),
                ("Central", models.CharField(max_length=500)),
                ("Attacking", models.CharField(max_length=500)),
                ("Wide", models.CharField(max_length=500)),
                ("Secondstriker", models.CharField(max_length=500)),
                ("Centreforward", models.CharField(max_length=500)),
                ("Winger", models.CharField(max_length=500)),
                ("Substitute1", models.CharField(max_length=500)),
                ("Substitute2", models.CharField(max_length=500)),
                ("Substitute3", models.CharField(max_length=500)),
                ("Substitute4", models.CharField(max_length=500)),
            ],
        ),
        migrations.CreateModel(
            name="Times",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("Firstmatch", models.TimeField()),
                ("Secondmatch", models.TimeField()),
            ],
        ),
        migrations.CreateModel(
            name="Venue",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("VenueName", models.CharField(max_length=500)),
                ("Location", models.CharField(default="", max_length=500)),
            ],
        ),
        migrations.CreateModel(
            name="Schedule",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("Match_date", models.DateField(default=None)),
                ("Match_time", models.TimeField(default=None)),
                (
                    "Team1",
                    models.ForeignKey(
                        default=None,
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="team1_matches",
                        to="adminapp.teamregistration",
                    ),
                ),
                (
                    "Team2",
                    models.ForeignKey(
                        default=None,
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="team2_matches",
                        to="adminapp.teamregistration",
                    ),
                ),
                (
                    "Venue",
                    models.ForeignKey(
                        default=None,
                        on_delete=django.db.models.deletion.CASCADE,
                        to="adminapp.venue",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="Results",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("TeamName1", models.CharField(max_length=500)),
                ("TeamName2", models.CharField(max_length=500)),
                ("TeamScore1", models.CharField(max_length=500)),
                ("TeamScore2", models.CharField(max_length=500)),
                ("Match_date", models.DateField(blank=True, default=None, null=True)),
                ("Match_time", models.TimeField(blank=True, default=None, null=True)),
                (
                    "Schedule",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="adminapp.schedule",
                    ),
                ),
            ],
        ),
    ]
