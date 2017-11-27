#!/usr/bin/env bash

# install findspark
/usr/bin/anaconda/bin/conda install -c conda-forge findspark

# upgrade numpy version
/usr/bin/anaconda/bin/conda update numpy

# link python to /usr/bin/anaconda/
sudo su
rm /usr/bin/python
ln -s /usr/bin/anaconda/bin/python2.7 /usr/bin/python
