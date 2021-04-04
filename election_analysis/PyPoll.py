# The data we need to retrieve.
# 1. The total number of votes cast
# 2. A complete list of candidates who received votes
# 3. The percentage of votes each candidate won
# 4. The total number of votes each candidate won
# 5. The winner of the election based on popular vote.

import csv
import os

# Assign a variable for the file to load and the path.
file_to_read = os.path.join("resources", "election_results.csv")
# Create a filename variable to a direct or indirect path to the file.
file_to_save = os.path.join("analysis", "election_analysis.txt")

# Open the election results and read the file.
with open(file_to_read) as election_data:

    # To do: read and analyze the data.
    file_reader = csv.reader(election_data)

    # Skip the header row
    next(file_reader)

    # Print each row in the CSV file.
    for row in file_reader:
        print(row)

# # Using the with statement open the file as a text file.
# with open(file_to_save, "w") as txt_file:
    
#     # Write some data to the file.
#     txt_file.write("Counties in the Election\n")
#     txt_file.write("-"*25+"\n")
#     txt_file.write("Arapahoe\n")
#     txt_file.write("Denver\n")
#     txt_file.write("Jefferson")