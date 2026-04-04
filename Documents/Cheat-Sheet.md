<h1 align=center>This Is A Linux Command Sheet!</h1>
<h3 align=center>With Explanations & Examples<h3>

## Data Commands
- **DD**
  - Used to write data bit-by-bit
    - `sudo dd if=/path/to/your/file of=/dev/device`
  - **Zeroing Out A Drive (Completely Erasing It)**
    - `sudo dd if=/dev/zero of=/dev/device`
- **MV**
  - Used to move data (scripts, images, folders, etc.) across your device
    - `mv ~/Downloads/Arch-Linux.iso ~/Operating-Systems/Arch-Linux.iso`
  - You can also rename items with the "mv" command
    - `mv ~/Downloads/Arch-Linux.iso ~/Operating-Systems/Arch.iso`
      - **"CP"** is the copy command, it works the same as `mv`, but it copies the item over instead of just transferring it.
- **CAT**
  - Used to show the file content of text files like .txt and .sh
    - `cat ~/Android/Phone-Debloat.sh`
    - `cat ~/Documents/Grocery-Bill.txt`
      - You may also use pipes with "|", this will redirect your command to whatever you put after the pipe.
        - `cat ~/Documents/Grocery-Bill.txt | wl-copy` would copy the contents to your clipboard if you had `wl-clipboard` installed.
- **RM**
  - Used to delete files (remove).
    - `rm ~/Documents/Grocery-Bill.txt`
  - Adding the ` -rf` flag allows rm to delete folders
    - `rm -rf ~/Documents`
- **CD**
  - Used to change your directory, this makes typing easier, as you won't have to type out long names
    - `cd ~/Downloads/Pictures` Puts you in the `Pictures` folder inside of `Downloads`
- **PWD**
  - Simply tells you where you are
    - `eric@larpaholic ~> pwd
/home/eric
eric@larpaholic ~> `
