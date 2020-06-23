# Intro to Kaldi
This short tutorial gives you a basic understanding of the data preparation part and how GMM-HMM models and TDNN models work to aid you in training a new model or debugging the scripts running.

### Data preparation:
Kaldi typically needs 2 kinds of transcription data to process the audio files. They are stored in the `data` and `lang` directories.

The data directory given along with the challenge has 3 folders, train, dev, eval and local.
The local directory contains the dictionary with information like 
-lexicon.txt
-silence_phones.txt
-non_silence_phones.txt
-optional_silence.txt

The dictionary will be used to create the `lang` directory for processing.

The train, dev and eval folders in the data directory contain the transcriptions for the audio files.
Each of them have the foll. files:
-segments
-spk2utt
-utt2spk
-text
-utt2dur
-wav.scp

If you want to train your model with custom data for the open challenge, you will need to manually create some of these files.

-The `text` file contains transcriptions for each utterance. It has 2 columns, with the 1st one holding the utterance id and the 2nd one holding the corresponding transcription.

-The `segments` file holds the time offsets in each recording. `<utterance-id> <recording-id> <segment-begin> <segment-end>`

-The `utt2spk` file references each utterance with the corresponding speaker who spoke it. It has the format `<utterance-id> <speaker-id>`

In case the speaker id's are not known, they can be assumed to be same as the utterance id's.

The other 2 files can be automatically generated.

-The `wav.scp` file will be automatically created when you run the run_gmm.sh script. It includes the path to all the audio files in the format: `<recording-id> <extended-filename>`

-The `spk2utt` file cross references each speaker with all his utterances in the format `<speaker-id> <utterance-id1> <utterance-id2> ....`. It can be generated using the command 
```bash
utils/utt2spk_to_spk2utt.pl data/train/utt2spk > data/train/spk2utt
```

For more details on data preparation for kaldi, visit https://kaldi-asr.org/doc/data_prep.html#data_prep_data