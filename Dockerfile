FROM ubuntu

RUN apt-get update && apt-get install -y git build-essential cmake libcurl4-openssl-dev

RUN git clone https://github.com/xmrig/xmrig.git

RUN mkdir xmrig/build

WORKDIR xmrig/build

RUN cmake .. -DCMAKE_BUILD_TYPE=Release

RUN make

ENV POOL stratum+tcp://xmr.pool.minergate.com:45560
ENV USERNAME username
ENV DONATE 5

CMD ./xmrig -o $POOL -u $USERNAME -p x -k --donate-level=$DONATE