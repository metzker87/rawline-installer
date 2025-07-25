#!/bin/bash

# Nome do arquivo zip com as fontes
ZIP_FILE="Rawline_FamiliaCompleta.zip"

# Diretório temporário para extração
TMP_DIR="/tmp/rawline_fontes"

# Diretório de instalação das fontes do usuário
FONT_DIR="$HOME/.local/share/fonts"

# Verifica se o arquivo ZIP existe
if [ ! -f "$ZIP_FILE" ]; then
    echo "Arquivo $ZIP_FILE não encontrado!"
    echo "Baixe o pacote completo em: https://github.com/metzker87/rawline-installer"
    exit 1
fi

echo "-> Criando diretório temporário: $TMP_DIR"
mkdir -p "$TMP_DIR"

echo "-> Extraindo fontes do ZIP..."
unzip -q "$ZIP_FILE" -d "$TMP_DIR"

echo "-> Criando diretório de fontes (caso não exista): $FONT_DIR"
mkdir -p "$FONT_DIR"

echo "-> Movendo arquivos .ttf para $FONT_DIR"
find "$TMP_DIR" -type f -name "*.ttf" -exec mv -v {} "$FONT_DIR" \;

echo "-> Atualizando cache de fontes..."
fc-cache -fv "$FONT_DIR"

echo "-> Limpando diretório temporário"
rm -rf "$TMP_DIR"

echo "✅ Fontes instaladas com sucesso!"
