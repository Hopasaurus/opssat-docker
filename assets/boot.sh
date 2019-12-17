x11vnc -display :20 -usepw &
Xvfb :20 -screen 0 1224x758x16 &
export DISPLAY=:20 
xterm &
gpredict &
gnuradio-companion &
python3 gr-opssat/app/desktop/main.py &
fluxbox 


