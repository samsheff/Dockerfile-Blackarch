FROM archlinux

RUN curl -O https://blackarch.org/strap.sh
RUN echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
RUN chmod +x strap.sh
RUN ./strap.sh
RUN pacman -Syu --noconfirm

ENTRYPOINT [ "/bin/bash" ]