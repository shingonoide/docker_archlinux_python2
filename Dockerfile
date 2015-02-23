# archlinux and python2

FROM shingonoide/archlinux-busybox

RUN pacman -Sy --needed --noconfirm python2 python2-pip \
  && rm /var/cache/pacman/pkg/*.tar.xz
