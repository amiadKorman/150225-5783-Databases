import csv
import random

# Read Games data from Games.csv
games_data = []
with open('Games.csv', 'r') as csvfile:
    reader = csv.reader(csvfile)
    next(reader)  # Skip header row
    for row in reader:
        games_data.append(row)

# Generate GameTeamStats data
gameteamstats_data = []
for game in games_data:
    game_id = int(game[0])
    home_team_id = int(game[2])
    away_team_id = int(game[3])
    game_home_stat_id = game_id * 2 - 1
    game_away_stat_id = game_id * 2
    # Generate random scores for each team
    home_team_score = random.randint(70, 120)
    away_team_score = random.randint(70, 120)

    # Determine the winner based on the scores
    if home_team_score > away_team_score:
        winning_team_id = home_team_id
        losing_team_id = away_team_id
        is_win = 1
    else:
        winning_team_id = away_team_id
        losing_team_id = home_team_id
        is_win = 0

    # Team 1 (home team)
    gameteamstats_data.append([game_home_stat_id, game_id, home_team_id, home_team_score, random.randint(30, 50),
                               random.randint(15, 30), random.randint(2, 8), random.randint(5, 15), 48,
                               is_win])

    # Team 2 (away team)
    gameteamstats_data.append([game_away_stat_id, game_id, away_team_id, away_team_score, random.randint(30, 50),
                               random.randint(15, 30), random.randint(2, 8), random.randint(5, 15), 48,
                               1 - is_win])

# Write GameTeamStats data to CSV file
with open('GameTeamStats.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(
        ["gameTeamStatsID", "gameID", "teamID", "score", "rebounds", "assists", "blocks", "steals", "duration", "isWin"])
    writer.writerows(gameteamstats_data)
