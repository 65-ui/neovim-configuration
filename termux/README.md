<!-- TOC Marked -->

+ [tmoe-link](#tmoe-link)
+ [ranger](#ranger)
+ [go](#go)
+ [nodejs npm](#nodejs-npm)
+ [python2](#python2)
+ [pip2](#pip2)
+ [python3](#python3)
+ [pip3](#pip3)
+ [neovim](#neovim)
	* [nodejs 支持 nvim](#nodejs-支持-nvim)
	* [python2 支持 nvim](#python2-支持-nvim)
	* [python3 支持 nvim](#python3-支持-nvim)
+ [解压缩工具](#解压缩工具)

<!-- /TOC -->

# tmoe-link

```shell
	bash -c "$(curl -Lv gitee.com/mo2/linux/raw/master/debian.sh)"
```

# ranger

```shell
sudo pacman -S ranger
```

# go

```shell
sudo pacman -S go
```

# nodejs npm

```shell
sudo pacman -S nodejs npm
```

# python2

```shell
sudo pacman -S python2
```

# pip2

```shell
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
```

```shell
sudo python2 get-pip.py
```

# python3

```shell
sudo pacman -S python3
```

# pip3

```shell
wget https://bootstrap.pypa.io/get-pip.py
```

```shell
sudo python3 get-pip.py
```

# neovim

```shell
sudo pacman -S --noconfirm neovim
```

## nodejs 支持 nvim

```shell
sudo npm install neovim
```

## python2 支持 nvim

```shell
sudo pip2 install neovim
```

## python3 支持 nvim

```shell
sudo pacman -S  --noconfirm python-pynvim
```

# 解压缩工具

```shell
sudo pacman -S thunar-archive-plugin xarchiver zip unzip p7zip arj lzop cpio unrar
```
