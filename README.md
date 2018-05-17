# SLS Detector Software

Conda packages for the [slsDetectorPackage](https://github.com/slsdetectorgroup/slsDetectorPackage)
Uses Travis CI for continuous integration with automatic deployment to Anaconda Cloud.
This repository contains only the conda specific code. This package currently does not include
the GUI.


## Install

### (binaries) From Anaconda Cloud

Because we rely on Travis CI the normal binaries are built with GLIBC2.14 and are 
therefore not compatible with Scientific Linux 6. 

```bash
#Add conda channels
conda config --add channels conda-forge
conda config --add channels slsdetectorgroup

conda install sls_detector_software=3.0.1

```

SL6 specific version (aka built with GLIBC2.12). These versions are manually built and
uploaded to Anaconda Cloud. Should be up to date but despite our best efforts they might
sometimes lag behind. 

```bash
#Add conda channels
conda config --add channels conda-forge
conda config --add channels slsdetectorgroup

conda install sls_detector_software=SL6_3.0.1

```

### Compile using conda-build
```bash
#Clone source code
git clone https://github.com/slsdetectorgroup/sls_detector_software.git

#Checkout the branch needed
git checkout 3.0.1

#Build and install the local version
conda-build sls_detector_software
conda install --use-local sls_detector_software

```