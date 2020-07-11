FROM archlinux
RUN ["useradd", "-u", "1000", "-m", "archlinux"]
RUN mkdir /var/gradle && \
  chown 1000:1000 /var/gradle
RUN pacman -Sy && \
  pacman -S --noconfirm jdk-openjdk postgresql postgis && \
  rm /var/cache/pacman/pkg/* /var/lib/pacman/sync/*
