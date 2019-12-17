
Tools from:
https://github.com/esa/gr-opssat

This will allow you to build and run the tools with less reading and fiddling.

I am still working some things out and which I will update as we go

build docker image: 
- `sh build.sh`

run it:
- `sh startDocker.sh`

That will put you in a shell, from there type `gpredict` to see if that will start... then attempt to follow the instructions from the gr-opssat repo


TODO:
TODO:

- Add instructions on how to start and test the programs
- Add instructions on how to setup home location in gpredict
- Figure out how to hook up and add the rtl-sdr (remember to do whatever to kick it out of the host)



TODO:
TODO:


For running it on a Mac:
- install XQuartz (https://www.xquartz.org/)(might need to log out an back in)
- enable network connections (in XQuartz settings)
- restart XQuartz
- run `xhost + 127.0.0.1` to enable connections from local host

more information:
https://www.esa.int/Enabling_Support/Operations/Calling_radio_amateurs_help_find_OPS-SAT



