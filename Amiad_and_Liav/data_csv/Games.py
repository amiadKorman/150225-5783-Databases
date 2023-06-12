import csv
import random
from datetime import datetime, timedelta

num_games = 20000
num_teams = 500

# Generate Games data
games_data = []
start_date = datetime(1946, 1, 1)
end_date = datetime(2023, 12, 31)
date_difference = (end_date - start_date).days

for game_id in range(1, num_games + 1):
    location_id = random.randint(1, num_teams)
    home_team_id = random.randint(1, num_teams)
    away_team_id = random.randint(1, num_teams)

    random_date = start_date + timedelta(days=random.randint(0, date_difference))
    game_datetime = random_date.replace(hour=random.randint(12, 22), minute=0, second=0)

    game_date = game_datetime.strftime("%d-%m-%Y %H:%M:%S")

    games_data.append([game_id, location_id, home_team_id, away_team_id, game_date])

# Write Games data to CSV file
with open('Games.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["gameID", "locationID", "homeTeamID", "awayTeamID", "gameDate"])
    writer.writerows(games_data)
