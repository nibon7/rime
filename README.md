# Rime configuration

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/nibon7/rime/ci.yml)

## Install rime-wanxiang

```sh
cat >> /etc/pacman.conf << EOF
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/\$arch
EOF

pacman -Syy
pacman -S archlinuxcn-keyring
pacman -S rime-wanxiang-flypy
```

## Deploy

```sh
# ibus only
pacman -S ibus-rime
rime=${XDG_CONFIG_HOME:-~/.config}/ibus/rime

# fcitx5 only
pacman -S fcitx5-rime
rime=${XDG_DATA_HOME:-~/.local/share}/fcitx5/rime

git clone https://github.com/nibon7/rime.git ${rime}
rime_deployer --build ${rime} /usr/share/rime-data/ ${rime}/build
```
