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
     
At this point we are done physically touching the remote equipment until finding the target is needed (non Goto-Mount), so we go inside to the AC and to escape the mosquitos.

  - Mac (or machine running KStars)
    - ssh into remote machine 
      - update datetime using **set_datetime**
      - start indi services using **start_indi_server**
  - open KStars on the Mac
    - Open EKOS 
      - Open/Create new (only needed to do 1 time) a profile 
        - Machine is remote
        - Not running indi-web-server 
        - ![./img/profile.png]()



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


