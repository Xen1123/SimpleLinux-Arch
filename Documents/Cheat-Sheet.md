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
      - **"CP"** is the copy command, it works the same as "mv", but it copies the itme over instead of just transferring it.
