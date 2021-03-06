# From SpotifyData.xlsx, convert the sheet "Worksheet1_Popularity" to CSV and call it Spotify_Popularity.csv.
# Check to confirm name and location of the Excel data file
ls

# Convert sheet "Worksheet1_Popularity" to CSV
in2csv SpotifyData.xlsx --sheet "Worksheet1_Popularity" > Spotify_Popularity.csv

# Print high level summary statistics for each column
csvstat Spotify_Popularity.csv 


# From SpotifyData.xlsx, convert the tab "Worksheet2_MusicAttributes" to CSV and call it Spotify_MusicAttributes.csv.
# Check to confirm name and location of the Excel data file
ls

# Convert sheet "Worksheet2_MusicAttributes" to CSV
in2csv SpotifyData.xlsx --sheet "Worksheet2_MusicAttributes" > Spotify_MusicAttributes.csv

# Print a preview of Spotify_MusicAttributes.csv using a function in csvkit with Markdown-compatible, fixed-width format.
# Check to confirm name and location of the new CSV file
ls

# Print preview of Spotify_MusicAttributes
csvlook Spotify_MusicAttributes.csv
