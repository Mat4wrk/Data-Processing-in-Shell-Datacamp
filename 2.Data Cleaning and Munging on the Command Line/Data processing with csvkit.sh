# Convert the Spotify201809 sheet into its own csv file named Spotify201809.csv.
# Convert the Spotify201809 sheet into its own csv file 
in2csv Spotify_201809_201810.xlsx --sheet "Spotify201809" > Spotify201809.csv

# Check to confirm name and location of data file
ls


# Familiarize ourselves with the column names by printing a preview of the file using a function in csvkit.
# Find the column names for song track and popularity rank. Create a new CSV containing only these 2 columns.
# Convert the Spotify201809 tab into its own csv file 
in2csv Spotify_201809_201810.xlsx --sheet "Spotify201809" > Spotify201809.csv

# Check to confirm name and location of data file
ls

# Preview file preview using a csvkit function
csvlook Spotify201809.csv

# Create a new csv with 2 columns: track_id and popularity
csvcut -c "track_id","popularity"  Spotify201809.csv > Spotify201809_subset.csv


# Stack Spotify201809_subset.csv and Spotify201810_subset.csv together to form 1 csv file and create a new column with either Sep2018 or Oct2018, 
# depending on original file source. Leave the name of the new column to its default group.
# Convert the Spotify201809 tab into its own csv file 
in2csv Spotify_201809_201810.xlsx --sheet "Spotify201809" > Spotify201809.csv

# Check to confirm name and location of data file
ls

# Preview file preview using a csvkit function
csvlook Spotify201809.csv

# Create a new csv with 2 columns: track_id and popularity
csvcut -c "track_id","popularity" Spotify201809.csv > Spotify201809_subset.csv

# While stacking the 2 files, create a data source column
csvstack -g "Sep2018","Oct2018", Spotify201809_subset.csv Spotify201810_subset.csv > Spotify_all_rankings.csv
