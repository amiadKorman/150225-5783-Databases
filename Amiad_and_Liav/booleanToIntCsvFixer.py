import csv
import sys

def update_csv(filename):
    with open(filename, 'r') as csvfile:
        csvreader = csv.reader(csvfile)
        rows = [row for row in csvreader]

    for row in rows:
        for i in range(len(row)):
            if row[i].lower() == 'false':
                row[i] = '0'
            elif row[i].lower() == 'true':
                row[i] = '1'

    with open(filename, 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerows(rows)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python script.py <filename>")
        sys.exit(1)
    filename = sys.argv[1]
    update_csv(filename)