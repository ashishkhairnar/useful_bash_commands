*Sticky bit -*
#Look for sticky bits in the file system - SUID/GUID
   - find / -perm -u=s -type f 2>/dev/null
   - ls -l /bin/su
      -rw*s*r-xr-x 1 root root 40128 May 17  2012 /bin/su
      
    s indicates "s" or SUID bit is set.

