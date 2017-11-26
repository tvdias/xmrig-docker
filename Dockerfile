FROM ubuntu

#ENV VERSION 2.1.0
# up to 2.3.1
#ENV DOWNLOADNAME xmrig-$VERSION-gcc7-xenial-amd64.tar.gz
ENV VERSION 2.4.2
ENV DOWNLOADNAME xmrig-2.4.2-gcc7-xenial-amd64-no-api.tar.gz

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/xmrig/xmrig/releases/download/v$VERSION/$DOWNLOADNAME

RUN tar -xvzf $DOWNLOADNAME

ENV POOL stratum+tcp://xmr.pool.minergate.com:45560
ENV USERNAME username
ENV DONATE 1
ENV THREADS 4

WORKDIR xmrig-$VERSION/

CMD ./xmrig -o $POOL -u $USERNAME -p x -k --donate-level=$DONATE -t $THREADS
