FROM anujdatar/cups:26.02.01

RUN apt-get update && \
    apt-get install -y wget lsb && \
    wget https://download.brother.com/welcome/dlf103956/mfcl3720cdwpdrv-1.0.0-0.i386.deb && \
    dpkg -i mfcl3720cdwpdrv-1.0.0-0.i386.deb || apt-get -f install -y