<h1 align=center>This Is A Linux Command Sheet!</h1>
<h3 align=center>With Explanations & Examples<h3>
<h2 align="center">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
</h2>
  
<h2 align=center>Data Management</h2>
  
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
  - Used to delete files (remove) PERMANENTLY, do not expect for there to be a trash where you can pull your files out!
    - `rm ~/Documents/Grocery-Bill.txt`
  - Adding the `-rf` flag allows rm to delete folders
    - `rm -rf ~/Documents`
- **CD**
  - Used to change your directory, this makes typing easier, as you won't have to type out long names
    - `cd ~/Downloads/Pictures` Puts you in the `Pictures` folder inside of `Downloads`
- **PWD**
  - Simply tells you where you are
```bash
eric@larpaholic ~> pwd
/home/eric
eric@larpaholic ~> 
```
- **LS**
  - Known as `list`, it lists the files in your working directory.
```bash
eric@larpaholic ~/Android> ls
Magisk.apk  Magisk.zip  Nothing3a/  Root-Help/  android-flasher.sh  phone-debloat.sh
eric@larpaholic ~/Android> 
```
  - Adding `-R` makes it list files in directories under your working directory, too.
```bash
eric@larpaholic ~/Android> ls -R
.:
Magisk.apk  Magisk.zip  Nothing3a/  Root-Help/  android-flasher.sh  phone-debloat.sh

./Nothing3a:
abl.img         cpucp_dtb.img    imagefv.img      product.img   system_dlkm.img  vbmeta_system.img  xbl_config.img
aop.img         devcfg.img       init_boot.img    pvmfw.img     system_ext.img   vbmeta_vendor.img  xbl_ramdump.img
aop_config.img  dsp.img          keymaster.img    qupfw.img     tz.img           vendor.img
bluetooth.img   dtbo.img         modem.img        recovery.img  uefi.img         vendor_boot.img
boot.img        featenabler.img  multiimgoem.img  shrm.img      uefisecapp.img   vendor_dlkm.img
cpucp.img       hyp.img          odm.img          system.img    vbmeta.img       xbl.img

./Root-Help:
 AdAway.apk       KsuWebUI.apk           LawnIcons.apk   Strong-Integrity.zip   Yurikey.zip
 GlobalIcon.apk  'LSPosed(Vector).zip'   Rezygisk.zip    Tricky-Store.zip
eric@larpaholic ~/Android> 
```
<h2 align=center></h2>
