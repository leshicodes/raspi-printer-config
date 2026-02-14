FROM anujdatar/cups:26.02.01

# Copy the local Brother driver .deb into the image
COPY assets/mfcl3720cdwpdrv-3.5.1-1.i386.deb /tmp/mfcl3720cdwpdrv-3.5.1-1.i386.deb

RUN apt-get update && \
    apt-get install -y lsb && \
    dpkg -i /tmp/mfcl3720cdwpdrv-3.5.1-1.i386.deb || apt-get -f install -y