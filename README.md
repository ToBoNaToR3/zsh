# zsh

install script for the installation of zsh and several plugins.

## Install

```bash
cd ~
git clone https://github.com/ToBoNaToR3/zsh
cd zsh
bash install.sh
```

## Install fonts for powerlevel10k

<https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual-font-installation>

## Reconfigure powerlevel10k

```bash
p10k configure
```

## Check for powerline font support

```bash
echo -e "\xee\x82\xa0"
```

## Use the development container

```bash
docker build -t zsh-test .
docker run -it zsh-test
```

Mise tools are not installed automatically.
To install them, run the folloowing command in the container shell:

```bash
mise install
```
