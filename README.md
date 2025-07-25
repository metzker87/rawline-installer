# Instalador de Fontes Rawline (Linux)

Este repositório contém um script de instalação automatizada da família de fontes **Rawline** para sistemas Linux.

## 📁 Conteúdo

- `Rawline_FamiliaCompleta.zip`: pacote original contendo os arquivos `.ttf`.
- `instalar_fontes.sh`: script shell automatizado que descompacta e instala as fontes no diretório de fontes do usuário (`~/.local/share/fonts`).

## 🚀 Como instalar

Clone este repositório ou baixe os arquivos `.zip` e `.sh`:

```bash
git clone https://github.com/metzker87/rawline-installer.git
cd rawline-installer
bash instalar_fontes.sh
```

## Se baixar manualmente o .zip

```bash
cd ~/Downloads
unzip rawline-installer-main.zip
cd rawline-installer-main
bash instalar_fontes.sh
```