# String variable and interpolation
$name = "Dee"
Write-Host "Hello, $name!"
# Output: Hello, Dee!

# Number variable
$age = 27
Write-Host "I am $age years old"
# Output: I am 27 years old

# IAM example: username variable
$user = "jsmith"
Write-Host "create account for $user"
# Output: create account for jsmith

# Build an email address from two variables
$firstName = "Jane"
$lastName = "Smith"
$email = "$firstName.$lastName@company.com"
Write-Host "Email: $email"
# Output: Email: Jane.Smith@company.com

# Lowercase it (methods go after a dot)
Write-Host "Lowercase email: $($email.ToLower())"
# Output: Lowercase email: jane.smith@company.com

# A true/false variable
$isEnabled = $true
Write-Host "Account enabled: $isEnabled"
# Output: Account enabled: True