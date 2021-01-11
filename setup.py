import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

def run(self):
    try:
        self.spawn(["setup.sh"])
    except DistutilsExceptionError:
        self.warn("Can't install")

setuptools.setup(
    name="MQTTMozillaTTSGerman", # Replace with your own username
    version="0.0.1",
    scripts=["MQTTMozillaTTSGerman"],
    author="Lukas Berner",
    author_email="author@example.com",
    description="A MQTT Client for german Mozilla TTS",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="http://github.com/sh4der/MQTTMozillaTTSGerman",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)