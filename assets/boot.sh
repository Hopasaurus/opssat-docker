x11vnc -display :20 -usepw &
Xvfb :20 -screen 0 1124x758x16 &
sleep 1
export DISPLAY=:20 
xterm &
gpredict &
gnuradio-companion &
python3 /root/gr-opssat/apps/desktop/main.py &
fluxbox 


