FROM archlinux
RUN ["useradd", "-u", "1000", "-m", "archlinux"]
RUN pacman -Sy && \
  pacman -S --noconfirm jdk-openjdk postgresql postgis && \
  rm /var/cache/pacman/pkg/* /var/lib/pacman/sync/*
