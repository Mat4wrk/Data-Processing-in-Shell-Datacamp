# Use sql2csv to access the SQLite database SpotifyDatabase and query and print all data in the table Spotify_Popularity.
# Verify database name 
ls

# Pull the entire Spotify_Popularity table and print in log
sql2csv --db "sqlite:///SpotifyDatabase.db" \
        --query "SELECT * FROM Spotify_Popularity" 
        

# Use a SQL query to print the first 5 rows in the table Spotify_Popularity. Then, preview the results using csvlook.
# Verify database name 
ls

# Query first 5 rows of Spotify_Popularity and print in log
sql2csv --db "sqlite:///SpotifyDatabase.db" \
        --query "SELECT * FROM Spotify_Popularity" \
        | csvlook         


# Save queried results to a new file Spotify_Popularity_5Rows.csv. Verify and preview the file with ls and csvlook.
# Verify database name 
ls

# Save query to new file Spotify_Popularity_5Rows.csv
sql2csv --db "sqlite:///SpotifyDatabase.db" \
        --query "SELECT * FROM Spotify_Popularity LIMIT 5" \
        > Spotify_Popularity_5Rows.csv

# Verify newly created file
ls

# Print preview of newly created file
csvlook Spotify_Popularity_5Rows.csv
