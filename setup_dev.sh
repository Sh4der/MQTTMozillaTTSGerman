#!/bin/bash

WORKDIR=./

sudo apt install python3.6 python3.6-dev espeak



mkdir .venv
virtualenv -p /usr/bin/python3.6 $WORKDIR/.venv
source $WORKDIR/.venv/bin/activate

pip install gdown ipython

gdown --id 1VG0EI7J6S1bk3h0q1VBc9ALExkdZdeVm -O $WORKDIR/tts_model.pth.tar
gdown --id 1s1GcSihlj58KX0LeA-FPFvdMWGMkcxKI -O $WORKDIR/config.json

gdown --id 1zYFHElvYW_oTeilvbZVLMLscColWRbck -O $WORKDIR/vocoder_model.pth.tar
gdown --id 1ye9kVDbatAKMncRMui7watrLQ_5DaJ3e -O $WORKDIR/config_vocoder.json
gdown --id 1QD40bU_M7CWrj9k0MEACNBRqwqVTSLDc -O $WORKDIR/scale_stats.npy

git clone https://github.com/mozilla/TTS

cd $WORKDIR/TTS
git checkout 540d811
pip install -r requirements.txt
python setup.py install


python -c "import os, sys; sys.path.append(os.getcwd())"
pip install requirements.txt
pip install .

cd $WORKDIR

deactivate