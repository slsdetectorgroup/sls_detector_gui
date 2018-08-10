# SLS Detector GUI

This conda package includes the Qt4 GUI for the slsDetectorPackage. It depends on sls_detector_lib for communicating with the detector. 


## Install

### From Anaconda Cloud


```bash
#Add conda channels if not done before
conda config --add channels conda-forge
conda config --add channels slsdetectorgroup

conda install sls_detector_gui=developer
#Or replace developer with your desired version

```

### Compile using conda-build

You can also compile the package locally using conda-build

```bash
#Clone source code
git clone https://github.com/slsdetectorgroup/sls_detector_gui.git

#Checkout the branch needed
git checkout developer

#Build and install the local version
conda build .
conda install --use-local sls_detector_gui

```
