# LinuxMint

auto config untuk update setelah install, install fish dan oh-my-posh, install tema, install php untuk programing, kusus untuk pengguna LinuxMint yang baru install

## Installation

Jika belum install git install terlebih dahulu

```
sudo apt install git -y
```

Clone ke home.

```
cd
git clone https://github.com/zhalaudien/linuxmint.git
cd linuxmint/
```

update system && install font, firefox.

```
./after_install.sh
```

Install Fish dan oh-my-posh

```
./install_fish.sh
```

Install tema.

```
./install_tema.sh
```

Install PHP, composer, apache, mariadb, phpmyadmin.

```
sudo ./install_php.sh
```

## Update Script

Update script jika ada update dan perbaikan

```
cd archlinux
git pull
```
