# An IAM example: array of usernames
$users = "jsmith", "mjones", "slee"
Write-Host "First user: $($users[0])"
# Output: First user: jsmith

# Last item and count
Write-Host "Last user: $($users[-1])"
# Output: Last user: slee

Write-Host "Total users: $($users.Count)"
# Output: Total users: 3

# Add a user to the array
$users += "dstewart"
Write-Host "After adding: $users"
# Output: After adding: jsmith mjones slee dstewart

# Check if a user is in the array
if ($users -contains "mjones") {
    Write-Host "mjones is in the list"
}
# Output: mjones is in the list

# Check if a user is in the array
if ($users -contains "bob") {
    Write-Host "bob is in the list"
}
# Output: (nothing — bob is not in the array)