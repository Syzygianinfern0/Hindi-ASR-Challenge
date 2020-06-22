# ASR-NPTEL-Challenge
## What is this about?
This challenge is held to help advance State-of-the-Art performance in Artificial Speech Recognition of Hindi Language
and spread the spirit of research for the same. Conducted by the Speech Processing Lab of IITM under Dr. Umesh S., this 
is a particularly difficult challenge of generating transcripts from audio files read by volunteers reading actual
news-paper articles. 

This challenge is a part of the [National Language Translation Mission](http://psa.gov.in/pmstiac-missions/natural-language-translation) 
funded by [MeitY](https://meity.gov.in/).

The text data was crawled from newspapers, and then volunteers were asked to read them. It covers genres like politics, 
sports, entertainment, etc. 
The following data sets will be released for this challenge:
- Train Set: 40 hours
- Dev Set: 5 hours
- Test Set - 5 hours 

along with the corresponding transcripts and time-stamps. The challenge is open to all 
irrespective of being individuals, teams or organizations. 

A baseline of GMM-HMM and TDNN models are set up and the pre-trained model weights are available for download (discussed
below). Lexicons, results and recipes to replicate the baseline experiments are also be made available.


## Guidelines
- The data can be freely downloaded after filling up a google doc and agreeing to the *License of Fair Use*. The data 
will also be publicly available after the end of the challenge in the good spirit of research, development and 
advancement of the Speech Recognition domain of the Deep Learning community.
- Any additional data can be used for training (public and private) as long as the participant(s) have legal rights over 
it. The Lab and and Institute in no way will be held responsible in any way with respect to copyright claims of the 
participant's data.
- Submissions are to be made [here]. A leaderboard is be maintained regularly and can be checked [here].

### Important Dates and Timeline
- Release of train,dev data: June 30, 2020
- Eval data release and opening of submission site: July 24, 2020
- Closing of submission site: August 2, 2020 (midnight anywhere in the world, i.e., 12pm UTC on August 2, 2020)
- Announcement of results: August 10 2020

## Get In Touch With Us!
We would love to get in touch with you in the following ways:
- mail to xxxxxx@xxxx.xx
- mail to speechiitm@gmail.com. 
- contact number xxxxxxxx

**Related Links**:
- Lab Website: 
- Official Site of Dr. Umesh S: http://www.ee.iitm.ac.in/~umeshs/
- Official Institute Link: https://www.iitm.ac.in/

# Get Started
## Link to the Data
*Insert drive link here*
Please download this Google Drive folder for the data - drive.google.com.***
You can use this snippet directly for the download too:
```bash
wget drive.google.com.***
```

<details> <summary>License and Fair Use</summary> Aenean commodo risus ante, eu
porta nisl semper non. In a ipsum libero. Fusce non lorem dui. Etiam id eros in
nunc lobortis pharetra sed ut leo. Nam eu arcu lectus. Fusce tempor eleifend
ipsum. Mauris scelerisque arcu quis rutrum maximus. Sed malesuada eget augue
quis fermentum. Vestibulum accumsan justo tristique blandit condimentum.
Suspendisse tincidunt leo ut felis mollis eleifend. Donec rutrum placerat urna,
a elementum ante lacinia in. Aliquam nulla nisl, volutpat a mauris at,
condimentum auctor sem.

</details>

## Quickstart
### Binder Demo
Especially targeted at beginners and participants who would like to get a hand at ASR in practise, a ready to run recipe
notebook on [Binder](https://mybinder.org/) of the pre-trained baseline model is available 
[here](https://mybinder.org/v2/gh/Syzygianinfern0/WAV2TEXT.git/master). The development environment of Kaldi-ASR and all
its required dependencies are already available. Given an audio file, and using the pre-trained weights (already loaded)
, the model would generate the Hindi transcripts.

Please checkout the `quickstart` directory for more information on the model and a downloadable notebook. 

### Spin-it Up Locally
If you already have [Kaldi-ASR](https://kaldi-asr.org/) set up on your local hardware, we would recommend you to try to 
spin up the above mentioned Binder demo in the form of a script that does the same.

More information on running the script can also be found under the `quickstart` directory.

## Running the Baseline Models
The code is inherently from [Kaldi-ASR](https://kaldi-asr.org/) and the training scripts can be found under the 
`models` directory. The pre-trained models from these baseline are also available for download considering if the 
participants might want to start from a checkpoint.

### GMM-HMM Acoustic Model
// cmds

// notes

### Chain Model (Time-Delay Neural Network)
// cmds

// notes

## Pre-Trained Weights
// link

// cmds

// notes
