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

- ibus

```sh
rime=${XDG_CONFIG_HOME:-~/.config}/ibus/rime
```

- fcitx5

```sh
rime=${XDG_DATA_HOME:-~/.local/share}/fcitx5/rime
```

```sh
git clone https://github.com/nibon7/rime.git ${rime}
rime_deployer --build ${rime} /usr/share/rime-data/ ${rime}/build
```
