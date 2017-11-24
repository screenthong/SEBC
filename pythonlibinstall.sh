#!/usr/bin/env bash

# install findspark
/usr/bin/anaconda/bin/conda install -c conda-forge findspark

# upgrade numpy version
/usr/bin/anaconda/bin/conda update numpy

# link python to /usr/bin/anaconda/
cd /usr/bin
rm python
ln -s /usr/bin/anaconda/bin/python2.7 /usr/bin/python
