# Rime configuration

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/nibon7/rime/ci.yml)

## Install rime-ice

```sh
cat >> /etc/pacman.conf << EOF
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/\$arch
EOF

pacman -Syu ibus-rime rime-ice-double-pinyin-flypy-git
```

## Deploy

```sh
git clone https://github.com/nibon7/rime.git $HOME/.config/ibus/rime
rime_deployer --build $HOME/.config/ibus/rime/ /usr/share/rime-data/
gsettings set org.gnome.desktop.input-sources sources "[('ibus', 'rime')]"
```
