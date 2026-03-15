############################################ 
# This Document is a cheat sheet for Linux #
# to help new users                        #
############################################
 
[File Managing Commands, Tips, & Examples]
| "dd" is used to transfer data bit-by-bit.
| **EXAMPLE**: sudo dd if=/path/to/file of=/dev/device-name bs=4M status=progress conv=fsync
| You find devices (partitions) by typing "lsblk".
--------
| "mv" is used to **MOVE** files around your device.
| **EXAMPLE**: mv ~/Downloads/Job-Application.pdf ~/Documents/Job_Application.pdf
| Using "mv" also lets you change the name of a file, when you give your output directory, just put a different name in that isn't already in the folder.
| **Re-Naming EXAMPLE**: mv ~/Downloads/Job_Application.pdf ~/Documents/Job_Resume.pdf
--------
| "cp" is used to **COPY** files instead of just moving them.
| **EXAMPLE**: cp -r ~/Pictures/Easter-2018 ~/Pictures/Family/
| Typing this would keep Easter-2018 in your Pictures folder, but it would also put it inside ~/Pictures/Family
--------
| "rm" is used to delete files, be careful! This command doesn't put your files in trash like an app would!
| **EXAMPLE**: rm -rf ~/Downloads/
