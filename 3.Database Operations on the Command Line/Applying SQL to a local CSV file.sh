# Complete the command to apply the SQL query to Spotify_MusicAttributes.csv.
# Preview CSV file
ls

# Apply SQL query to Spotify_MusicAttributes.csv
csvsql --query "SELECT * FROM Spotify_MusicAttributes ORDER BY duration_ms LIMIT 1"  Spotify_MusicAttributes.csv


# Further improve the output by piping the output to csvlook.
# Reformat the output using csvlook 
csvsql --query "SELECT * FROM Spotify_MusicAttributes ORDER BY duration_ms LIMIT 1" \
	Spotify_MusicAttributes.csv | csvlook
  
  
# Instead of printing to console, re-direct output and save as new file: LongestSong.csv.
# Re-direct output to new file: LongestSong.csv
csvsql --query "SELECT * FROM Spotify_MusicAttributes ORDER BY duration_ms LIMIT 1" \
	Spotify_MusicAttributes.csv > LongestSong.csv
    
# Preview newly created file 
csvlook LongestSong.csv
