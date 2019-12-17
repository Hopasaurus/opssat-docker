From debian:latest

run apt-get update && \
    apt-get install -y gpredict gnuradio git cmake python-pip python3-pip swig && \
    pip install construct requests && \
    pip3 install zmq PyQt5 numpy crccheck

workdir /root

run git clone https://github.com/esa/gr-opssat.git && \
    git clone https://github.com/wnagele/gr-gpredict-doppler.git && \
    git clone https://github.com/daniestevez/gr-satellites.git

copy assets/gpredict.config.tgz /root
copy assets/start_gp.sh /root
run mkdir -p /root/.config && cd /root/.config && tar zxvf /root/gpredict.config.tgz

# build gpredict-doppler
run cd /root/gr-gpredict-doppler && mkdir build && cd build && cmake ../ && make && make install

# libfec
run cd /root && git clone https://github.com/daniestevez/libfec.git
run cd libfec && ./configure && make && make install

# build gr-satellites
run cd /root/gr-satellites && mkdir build && cd build && cmake .. && make && make install && ldconfig

env DISPLAY=host.docker.internal:0

