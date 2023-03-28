set timeout 30
set host your_db_host
set user your_db_username
set password your_db_pass

spawn mysql -u$user -p -h $host
expect "*password:*" {send "$password\r"}

interact
