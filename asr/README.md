# Train your own ASR model

We have set up all the scripts for you to build your own Gaussian Mixture Model (GMM), Hidden Markov Model (HMM) and a Chain Model using deep neural networks. We assume the user to have a basic knowledge of git and GitHub. If not, check out this [link](https://git-scm.com).

## Pre-trained model:
We have attached a pretrained model for you to get an essence of the challenge. It also helps beginners to explore how ASR systems work. Follow the following steps to test our model on your own data.

- Open the webpage https://mybinder.org/v2/gh/Syzygianinfern0/WAV2TEXT.git/master
- It redirects to a binder webpage. After a few minutes, it will open into a jupyter notebook environment.
- Click the WAV2TXT folder to open the directory and run the **Speech to Text.ipynb** file. You can run all the cells to get the hindi transcriptions for a pre recorded hindi audio file.
- To test with your custom data, record it into a .wav format and upload it into the **data** directory with the name **speech.wav**. Running the same cells in the ipython notebook will give you the new translation.
- Checkout the `quickstart` directory for more information on the same.
 
## Setup Scripts:
The scripts in the [challenge repository](https://github.com/Speech-Lab-IITM/IITM-ASR-Challenge/tree/master/asr) can be directly used to train your GMM-HMM and Chain models. You need to make a local copy of the repository in your system using
```
git clone https://github.com/Speech-Lab-IITM/IITM-ASR-Challenge 
```

The scripts require **Kaldi**, a popular speech recognition framework to be set up in your local systems. 

We recommend building Kaldi from scratch in your local system to enable all the features and customise it to your system's specifications. Checkout https://kaldi-asr.org/doc/install.html for detailed instructions.

But during the build process, you might run into certain dependency mismatch issues or path related issues. To get started without any of these hassles, you can set up a Docker Container in your system for a clean installation. Please have a look at the [tools directory](https://github.com/Speech-Lab-IITM/IITM-ASR-Challenge/tree/master/tools) for more information on the same. 

## Train Scripts:
- Navigate to the asr folder in the Hindi-ASR-Challenge directory and edit **KALDI_ROOT** variable in the path.sh file to point to your locally installed kaldi directory. 
- Download the data from the link given along with your registration and copy the path of that directory and enter it for the **audio_dir** argument in the **run_gmm.sh** file. 
- Open your terminal in that directory and run `bash -x run_gmm.sh` to build your GMM-HMM model.
- In the same terminal, run `bash -x run_tdnn.sh`  to build your Chain model.




