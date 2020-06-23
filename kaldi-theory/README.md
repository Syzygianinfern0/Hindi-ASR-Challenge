# Intro to Kaldi
This short tutorial gives you a basic understanding of the data preparation part and how GMM-HMM models and TDNN models work to aid you in training a new model or debugging the scripts running.

### Language models, Grammar models and Acoustic models

### Kaldi spectogram (optional)

### Common file types used:
- `.scp` is a script file which maps a key to a file name or a unix pipe.

- `.ark` is a archive file which stores data in inline format.

- `.fst` is a compiled file created by openFST containing lexicons

### Acoustic Data preparation:
Kaldi typically needs 2 kinds of transcription data to process the audio files. They are stored in the `data` and `lang` directories.

The data directory given along with the challenge has 3 folders, train, dev, eval and local.
The local directory contains the dictionary with information like 
- lexicon.txt
- silence_phones.txt
- non_silence_phones.txt
- optional_silence.txt

The dictionary will be used to create the `lang` directory for processing.

The train, dev and eval folders in the data directory contain the transcriptions for the audio files.
Each of them have the foll. files:
- segments
- spk2utt
- utt2spk
- text
- utt2dur
- wav.scp

If you want to train your model with custom data for the open challenge, you will need to manually create some of these files.

- The `text` file contains transcriptions for each utterance. It has 2 columns, with the 1st one holding the utterance id and the 2nd one holding the corresponding transcription.

- The `segments` file holds the time offsets in each recording. `<utterance-id> <recording-id> <segment-begin> <segment-end>`

- The `utt2spk` file references each utterance with the corresponding speaker who spoke it. It has the format `<utterance-id> <speaker-id>`

In case the speaker id's are not known, they can be assumed to be same as the utterance id's.

The other 2 files can be automatically generated.

- The `wav.scp` file will be automatically created when you run the run_gmm.sh script. It includes the path to all the audio files in the format: `<recording-id> <extended-filename>`

- The `spk2utt` file cross references each speaker with all his utterances in the format `<speaker-id> <utterance-id1> <utterance-id2> ....`. It can be generated using the command 
```bash
utils/utt2spk_to_spk2utt.pl data/train/utt2spk > data/train/spk2utt
```

For more details on data preparation for kaldi, visit https://kaldi-asr.org/doc/data_prep.html#data_prep_data

### Features Extraction :

Kaldi analyes a voice signal in the form of its Mel Spectrogram where its frequencies are represented in a mel scale. It extractes the MFCC features in this form and stores it in a feats.scp file.
After normalisation, the Cepstral Mean and Variance Statistics (CMVN stats) are extracted and stored in the cmvn.ark files.

### Monophone Training:

Kaldi identifies different phenomes as phones and a monophone is a context independent phone. We initially train the model with monophones and then move on to triphones. This stage initialises a HMM-topoplogy and trains the model, aligning the features after every pass. It gives a relatively low accuracy compared to training with triphones.

### Triphone training:

After monophone training, align the audio with the acoustic model. The triphone training is a n-gram model which included contextual information. 
It is done in 3 stages:

1. Deltas +delta-deltas training:
It computes the derivatives and double derivatives to supplement the MFCC features. The delta features are computed on a window of the original features where the delta-deltas are then computed on a larger window of the delta-features. 

2. LDA-MLLT training: 
The LDA or Linear Discriminant Analysis builds HMM states for the feature vectors but with a reduced feature space. The MLLT or Maximum Likelihood Linear Transform takes the reduced feature space from the LDA and derives a unique transformation for each speaker. So, it minimises difference among speakers and aids speaker normalisation.

3. SAT training:
The SAT or Speaker Adaptive Training normalises the speaker and noise features by adapting to each specific speaker with a particular data transform. It generalises the data better and reduces the effect of the speaker or the recording environment.


### fMLLR Alignments:

fMLLR or Feature Space Maximum Likelihood Linear Regression removes the speaker specific inormation from the acoustic data so that the model can then be aligned to a form a speaker independent form.
