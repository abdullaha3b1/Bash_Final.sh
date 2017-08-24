function Final { # the start of the function

param (

$computer_name = (hostname), # to identity host name
$date_Time = (Get-Date -UFormat "%Y / %m / %d / %A / %T"), # to identity date and time as variable
$OSver= (Get-WmiObject -Class Win32_OperatingSystem | ForEach-Object -MemberName Caption), # to identity OS Version
$ps= (Get-Process | group-object SessionId), # to identity all the processes
$open_sockets= (Get-NetTCPConnection) # to identity all the open sockets

)

echo "Host Name:" $computer_name >> survey.txt  # to display my computer name in survey.txt file
echo "Date and Time:" $date_Time >> survey.txt # to write the current date & time in survey.txt file
echo "System Info.:" $OSver >> survey.txt # to write the OS Version in survey.txt file
echo "all processes,sorted by session ID:" $ps >> survey.txt # List of all processes,sorted by session ID in survey.txt file
echo "open sockets:"$open_sockets >> survey.txt # to list all open sockets

}


Get-ChildItem -Path C:\Users\asuhaibani\Desktop\hashing123 -Recurse| Get-FileHash  -Algorithm MD5 # to hash all the files in the directory 



## My custom as popup message

$a = new-object -comobject wscript.shell 
$intAnswer = $a.popup("Do you like PowerHorse?", `
0,"Delete Files",4)
If ($intAnswer -eq 6) {
  $a.popup("You answered YES.")
} else {
  $a.popup("You answered NO.")
}
