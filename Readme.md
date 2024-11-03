


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


