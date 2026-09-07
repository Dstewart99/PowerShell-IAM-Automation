# ===== 1. Basic foreach loop =====
$users = "dstewart", "jsmith", "mwilliams", "jferebee"
foreach ($user in $users) {
    Write-Host "Hello, $user!"
}
# Output:
# Hello, dstewart!
# Hello, jsmith!
# Hello, mwilliams!
# Hello, jferebee!

# ===== 2. Loop that builds usernames from full names =====
$names = "Jane Smith", "Mike Jones", "Sara Lee"
foreach ($name in $names) {
    $parts = $name -split " "
    $firstName = $parts[0]
    $lastName = $parts[1]
    $username = $firstName.Substring(0,1) + $lastName
    $username = $username.ToLower()
    Write-Host "Full name: $name -> Username: $username"
}
# Output:
# Full name: Jane Smith -> Username: jsmith
# Full name: Mike Jones -> Username: mjones
# Full name: Sara Lee -> Username: slee

# ===== 3. Loop with if/else conditional =====
$staff = "Dee", "Mike", "Sara"
foreach ($name in $staff) {
    if ($name -eq "Dee") {
        Write-Host "Hey boss, welcome back $name!"
    } else {
        Write-Host "Welcome, $name!"
    }
}
# Output:
# Hey boss, welcome back Dee!
# Welcome, Mike!
# Welcome, Sara!

# ===== 4. Standalone if/else (no loop) =====
$singleName = "Mike"
if ($singleName -eq "Dee") {
    Write-Host "You're the boss!"
} else {
    Write-Host "You're not the boss."
}
# Output: You're not the boss.


# ===== 5. Challenge: group assignment by first letter =====
$newHires = "jsmith", "mwilliams", "jferebee", "slee"
foreach ($newHire in $newHires) {
    if ($newHire.Substring(0,1) -eq "j") {
        Write-Host "$newHire add to Legal group"
    } else {
        Write-Host "$newHire Everyone group only"
    }
}
  # Output:
# jsmith -> add to Legal group
# mwilliams -> Everyone group only
# jferebee -> add to Legal group
# slee -> Everyone group only 