import csv
import random

num_awards = 1000
num_players = 20000
num_teams = 500

# Generate Awards data
awards_data = []
for award_id in range(1, num_awards + 1):
    winner_id = random.randint(1, num_players) # There is a lot more players than teams
    if winner_id <= num_teams:
        is_player = random.randint(0, 1)
        is_team = 1 - is_player
    else:
        is_player = 1
        is_team = 0
    award_name = f"Award {award_id}"

    awards_data.append([award_id, winner_id, award_name, is_player, is_team])

# Write Awards data to CSV file
with open('Awards.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["awardID", "winnerID", "awardName", "isPlayer", "isTeam"])
    writer.writerows(awards_data)
