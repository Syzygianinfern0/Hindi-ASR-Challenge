# Quickstart

The code in this directory is especially aimed at giving a first hand experience to beginners and ones who would like to 
just obtain the results of the model without training them on their own.

The `stt` directory here would redirect to a dedicated repository where you can checkout the source-code of the 
scripts used to generate the transcriptions. 

Some points to note:
- The weights of the model are already loaded into as an `mdl` file in the 
`exp/` folder of the repo. The weights can be replaced with your own trained weights provided they are train using the 
Kaldi-ASR framework and follow a similar structure.
- The audio used for decoding on, is present at `data/speech.wav` and can be replaced with your custom audio (Hindi only).
The command in `speech_to_text.sh` can also be modified rather, to your audio and to match your needs. 
- The Binder version is made "ready to execute" whereas if you would like to try this on your local machine, just changing
the `KALDI_ROOT` environment variable under `path.sh` would get you ready to go. 

*Note: Checkout the tools folder of this
repo for Kaldi-ASR installation scripts and a Dockerfile if you would like to get it set-up locally*

