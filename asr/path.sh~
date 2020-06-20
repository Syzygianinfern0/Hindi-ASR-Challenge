MAIN_ROOT=/content
KALDI_ROOT=$MAIN_ROOT/kaldi
#source $MAIN_ROOT/tools/venv/bin/activate
#export KALDI_ROOT=/speech1/software/kaldi_JULY2019
#export KALDI_ROOT=/speech1/software/kaldi_FEB2020/
[ -f $KALDI_ROOT/tools/env.sh ] && . $KALDI_ROOT/tools/env.sh
export PATH=$PWD/utils/:$KALDI_ROOT/tools/openfst/bin:$PWD:$PATH
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh
export LD_LIBRARY_PATH=/usr/lib32/atlas:/usr/local/cuda-8.0/lib64:/usr/lib64/atlas:$LD_LIBRARY_PATH
export LC_ALL=C


