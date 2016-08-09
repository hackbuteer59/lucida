## Install Djinn specific version of Caffe
export CPU_ONLY=1

if [ -z "$THREADS" ]; then
  THREADS=4
fi

if [ -d caffe ]; then
  echo "Caffe already installed, skipping"
  exit
fi


  git clone -b ipa https://github.com/hackbuteer59/caffe.git \
  && cd caffe \
  && cp Makefile.config.example Makefile.config \
  && make -j $THREADS \
  && make distribute
