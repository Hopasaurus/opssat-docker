
Tools from:
https://github.com/esa/gr-opssat

This will allow you to build and run the tools with less reading and fiddling.


It boots up and loads most of the tools it takes a little tweaking to get it running.
Need to figure out how to export the gpredict config without manually zipping it each time
also will want to do the same for the receiver flowgraph

It sets up a vnc server, use a vnc viewer to localhost:5901 and use password '1234'


build docker image: 
- `sh build.sh`

run it:
- `sh startDocker.sh`

This will start an X session that can be accessed with vnc.  Use "localhost:5901" password is "1234"

- Once in the session 
  - load the flowgraphs per the instructions at https://github.com/esa/gr-opssat 
    - for a test system edit the file block to load from /root/gr-opssat/recordings/osat_437.16M_200k_beacon_mode6.cf32 
    - for a live system 
      - disable the file block 
      - enable appropriate block for your receiver
      - bypass the rate limit block that is attached to the source outputs (ignore warning??)
      - if it isn't working, this may help:
    	- `sudo modprobe -r dvb_usb_rtl28xxu`
      - start satelite tracking in gpredict
        - tle updated 12/18/2019 at around 6am (EST)
      - I think this should be it, good luck!



more information:
https://www.esa.int/Enabling_Support/Operations/Calling_radio_amateurs_help_find_OPS-SAT



