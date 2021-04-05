# Add dependencies
import csv
import os

# Assign file path of data to be read
file_to_read = os.path.join("resources", "election_results.csv")
# Assign file path of results to be outputted
file_to_save = os.path.join("analysis", "election_analysis.txt")

# Initialize total vote counting variable
total_votes = 0

# Initialize candidate variables
candidate_options = []
candidate_votes = {}

# Initialize winning candidate variables
winning_candidate = ""
winning_count = 0
winning_percentage = 0

# Open the election results and read the file.
with open(file_to_read) as election_data:

    # Create reader object for the input csv.
    file_reader = csv.reader(election_data)

    # Skip the header row.
    headers = next(file_reader)

    # Iterate through the csv and count votes.
    for row in file_reader:
        # Increase the total vote count by 1.
        total_votes += 1
        
        # Assign the current candidate name to the candidate name value of the current row.
        candidate_name = row[2]

        # Add the candidate name to the list of candidates if it is not already present.
        if candidate_name not in candidate_options:
            candidate_options.append(candidate_name)
            candidate_votes[candidate_name] = 0
        
        # Increase the vote total for the current candidate by 1.
        candidate_votes[candidate_name] += 1

# Open the election analysis and write to the file.
with open(file_to_save, "w") as txt_file:

    # Text for election summary results
    election_results = (
        f"\nElection Results\n"
        f"-------------------------\n"
        f"Total Votes: {total_votes:,}\n"
        f"-------------------------\n"
    )
    
    print(election_results, end="")
    txt_file.write(election_results)

    for candidate in candidate_options:
        votes = candidate_votes[candidate]
        vote_percentage = float(votes)/float(total_votes)*100
        
        candidate_results = (f"{candidate}: {vote_percentage:.1f}% ({votes:,})\n")
        print(candidate_results)
        txt_file.write(candidate_results)

        if (votes > winning_count) and (vote_percentage > winning_percentage):
            winning_count = votes
            winning_percentage = vote_percentage
            winning_candidate = candidate

    winning_candidate_summary = (
        f"-------------------------\n"
        f"Winner: {winning_candidate}\n"
        f"Winning Vote Count: {winning_count:,}\n"
        f"Winning Percentage: {winning_percentage:.1f}%\n"
        f"-------------------------\n"
    )
    
    print(winning_candidate_summary)
    txt_file.write(winning_candidate_summary)

