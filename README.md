# German MQTT Client for Mozilla TTS

This is a simple MQTT CLient for Mozilla [Deepspeech](https://github.com/mozilla/TTS). 
It uses a german dataset from this repository: [thorstenMueller/deep-learning-german-tts](https://github.com/thorstenMueller/deep-learning-german-tts)

# Install
```
git clone http://github.com/sh4der/MQTTMozillaTTSGerman
chmod +x ./setup.sh
./setup.sh
```

# Run
```
source <path to MQTTMozillaTTSGerman>/.venv/bin/activate
MQTTMozillaTTSGerman --tts_model /home/pi/.config/rhasspy/profiles/de/TTS/tts_model.pth.tar --tts_config /home/pi/.config/rhasspy/profiles/de/TTS/config.json --vocoder_model /home/pi/.config/rhasspy/profiles/de/TTS/vocoder_model.pth.tar --vocoder_config /home/pi/.config/rhasspy/profiles/de/TTS/config_vocoder.json
```