FROM archlinux
RUN ["useradd", "-u", "1000", "-M", "archlinux"]
RUN pacman -Sy && \
  pacman -S --noconfirm jdk-openjdk postgresql postgis && \
  rm /var/cache/pacman/pkg/* /var/lib/pacman/sync/*
