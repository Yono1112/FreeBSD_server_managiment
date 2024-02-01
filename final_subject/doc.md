## setup latex

1. install wget
```sh
sudo pkg install wget
```

2. wget latex
```sh
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
```

3. tar latex
```sh
tar -xvf install-tl-ux.tar.gz
```

4. install latex
```sh
cd install-tl-20240108
sudo ./install-tl
```
Select scheme ⇒ 'd' basic scheme, and Install

5. create shortcut command
```sh
sudo ln -s /usr/local/texlive/2023/bin/amd64-freebsd/dvipdfmx /usr/local/bin/dvipdfmx
sudo ln -s /usr/local/texlive/2023/bin/amd64-freebsd/latex /usr/local/bin/latex
```