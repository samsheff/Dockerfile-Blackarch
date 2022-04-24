FROM archlinux

RUN curl -O https://blackarch.org/strap.sh
RUN echo 8bfe5a569ba7d3b055077a4e5ceada94119cccef strap.sh | sha1sum -c
RUN chmod +x strap.sh
RUN ./strap.sh
RUN pacman -Syu --noconfirm

ENTRYPOINT [ "/bin/bash" ]