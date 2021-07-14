#!/usr/bin/env bash

echo "Cloning the repo..."
# clone the repo
git clone https://github.com/TeamUltroid/Ultroid.git Ultroid

# navigate to folder
cd Ultroid

echo "Installing requirements. Please wait..."
# install requirements
pip3 install --no-cache-dir -r requirements.txt

echo "DONE. Pushing layers."