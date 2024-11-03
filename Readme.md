# My Indi Workflow for beginners astro photography

These are some files I have written - to try and improve my astro-photography session. 

I started off, not liking KStars at all, but - the more I use it, the better it keeps getting. 


## Startup process

I will assume everything is turned **off** and **unplugged**.

   - Remote Machine
     - Plug in all USBs (via powered USB Extension)
       - Mount
       - Camera
     - Connect Network cable (Wifi is fine also)
     - Power up
       - Turn on Mount 
       - Turn on Camera 
   - Mount 
     - Level
     - Power on
     - Polar align 
     - 



## Remote 

There are some scripts that I use on the remote server (a Rasberry Pi). This device has the mount and camera connected to it.


```  
gps.sh
home.nmea
set_datetime.sh
start_indi_server.sh
```

### start_indi_server.sh 

This checks to see if **indiserver** is running, and if it is - it will tell you how to **manually** stop it. 

If **indiserver** is not running, it will start it and then make connections to

  - Nikon DSLR 
  - Fake GPS (see below)
  - Mount (also a fake mount)


