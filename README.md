# UDP-Powershell-Command
This is a small tool for executing commands that, receive over UDP
With this tool, you can send via UDP on Port 9876 some Powershell command and your Computer do it.

## What you have to do!  
Start Powershell as an administrator and enter this:

    Set-ExecutionPolicy unrestricted -force

*This is necessary to receive the UDP data

---
## What you can do
  ### With NFC Tags:
 - Buy NFC tags  
 - Download NFC Tools for Android: [NFC Tools for Android](https://play.google.com/store/apps/details?id=com.wakdev.wdnfc&hl=de_CH)   
 - Write a powershell code in a UDP message on port: 9876  
 - Scan the tag with your phone (you must be on the same network)  
 - Tutorial: [You-Tube Tutorial]( https://youtu.be/jQjleFPDsfM/)  
 	   
  ## Run on system startup:
 - Open Task Scheduler
 - add new Task on sign in
 - add cmd with argument: /c"**your path**\run_UDP.bat"  
 
 For Examble:
 
         program: C:\Windows\System32\cmd.exe
         Argument: c"C:\Program Files (x86)\UDP_NFC\run_UDP.bat"
