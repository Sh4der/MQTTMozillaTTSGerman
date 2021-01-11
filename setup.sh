#!/bin/bash

WORKDIR=./
SAVEFOLDER=/home/pi/.config/rhasspy/profiles/de/TTS/

sudo apt install python3.6 python3.6-dev espeak



mkdir -p .venv
virtualenv -p /usr/bin/python3.6 $WORKDIR/.venv
source $WORKDIR/.venv/bin/activate

pip install gdown ipython
mkdir $SAVEFOLDER
gdown --id 1VG0EI7J6S1bk3h0q1VBc9ALExkdZdeVm -O $SAVEFOLDER/tts_model.pth.tar
gdown --id 1s1GcSihlj58KX0LeA-FPFvdMWGMkcxKI -O $SAVEFOLDER/config.json

gdown --id 1zYFHElvYW_oTeilvbZVLMLscColWRbck -O $SAVEFOLDER/vocoder_model.pth.tar
gdown --id 1ye9kVDbatAKMncRMui7watrLQ_5DaJ3e -O $SAVEFOLDER/config_vocoder.json
gdown --id 1QD40bU_M7CWrj9k0MEACNBRqwqVTSLDc -O $SAVEFOLDER/scale_stats.npy

git clone https://github.com/mozilla/TTS

cd $WORKDIR/TTS
git checkout 540d811
pip install -r requirements.txt
python setup.py install


python -c "import os, sys; sys.path.append(os.getcwd())"

cd $WORKDIR
pip install requirements.txt
pip install .

deactivate