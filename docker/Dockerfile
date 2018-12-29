FROM ubuntu:14.04
RUN apt update && apt install -yq wget && apt install -yq libc6 libfontconfig1 libfreetype6 libgcc1 libglib2.0-0 libice6 libpam0g libsm6 libssl0.9.8 libstdc++6 libx11-6 libxext6 libxrender1 zlib1g
RUN cd /root/ && wget https://cdn.download.comodo.com/cis/download/installs/linux/cav-linux_x64.deb && dpkg -i cav-linux_x64.deb && /opt/COMODO/post_setup.sh
COPY tests /root/tests
COPY bin/update.sh /opt/COMODO/
RUN chmod +x /root/tests/*.sh && chmod +x /opt/COMODO/update.sh && /opt/COMODO/update.sh
ENTRYPOINT ["/bin/bash"]
