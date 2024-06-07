#!/bin/bash

# Instalar DFX, el entorno de desarrollo de Motoko
DFX_VERSION=0.13.0

# Descargar e instalar DFX
echo "Installing DFX version $DFX_VERSION..."
sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)" -- --version $DFX_VERSION

# Añadir DFX al PATH
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Verificar instalación de DFX
dfx --version

# Instalar npm si no está instalado
if ! command -v npm &> /dev/null
then
    echo "npm could not be found. Installing npm..."
    curl -L https://www.npmjs.com/install.sh | sh
fi

# Instalar dependencies de proyecto
npm install
