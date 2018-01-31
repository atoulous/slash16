cat /etc/passwd | sed 's/:/ /g' | awk '{print "login=" $1, "uid=" $3, "path=" $6}'

