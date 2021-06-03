# condasandbox

## Getting started
run make to install jupyterlab and setup R kernal
```
make
```

## How to setup a virtual environment with conda
The conda package and environment manager is included in all versions of
[Anaconda](https://docs.conda.io/projects/conda/en/latest/glossary.html#anaconda-glossary),
[Miniconda](https://docs.conda.io/projects/conda/en/latest/glossary.html#miniconda-glossary),
and [Anaconda Repository](https://docs.continuum.io/anaconda-repository/).
Here we will go with the lightweight miniconda option.
+ Download the latest [miniconda installer](https://docs.conda.io/en/latest/miniconda.html) for your operating system and run the installer script.
For example, as of Apr 2021 the latest for MacOS is `Miniconda3-py39_4.9.2-MacOSX-x86_64.sh`. Open a terminal, navigate to the directory where the installer
 got downloaded, and run the installer with bash:
```
bash Miniconda3-py39_4.9.2-MacOSX-x86_64.sh
```
You will be prompted to read the user licence agreement which you can skip to
the end by typing "q". There you will be asked to accept the licence terms.
Go ahead and initialize Miniconda3 when prompted. You will need to close your
terminal and open a new one for the changes to take effect. Go ahead and do so.
By default the conda base environment will be activated whenever you open a new
terminal. You will know the conda base environment is active because you will
see a `(base)` prefix in front of your `user@computer` address.
I prefer to deactivate this default behavior because I have other ongoing
projects and I don't want to interfere with their python settings. To deactivate
the default behavior type:
```
conda config --set auto_activate_base false
```
Next time you open an new terminal you should not see the `(base)` prefix.
You can activate the conda base environment manually with the command
```
conda activate base
```

+ Double check conda is updated.
```
conda update -n base -y conda
```
+ Create a virtual environment for condasandbox with the specified requirements.
```
conda create --file requirements.txt -c conda-forge -n condasandbox -y
```
+ Activate `condasandbox` virtual environment
```
conda activate condasandbox
```
+ Update virtual environment (when necessary)
```
conda env update -n condasandbox -f requirements.txt
```
+ To deactivate environment, use
```
conda deactivate
```
+ To remove an environment, use
```
conda env remove -n condasandbox
```
