<h1> Setting up environment </h1>

## Update system
```
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install git -y
```

## install miniconda 
1. mac 
    - install 
```bash
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh 
    - initialize for bash or zsh 
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
```

2. linux 
    - install
```bash
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh 
    - initialize for bash or zsh 
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
```

## install packages
```
sudo apt install python3-pip -y  
sudo apt install python3.8  
pip3 install -r requirements.txt  
```

###########################
1. install package management tools  
`pip3 install pipreqs pip-tools`

2. Add or remove packages in requirements.in  
`pipreqs --savepath=requirements.in` 

pipreqs: go through your project and only create a list of the packages 
that your project use. Instead of all the packages 
in your python environment as pip freeze would do. 

3. Create or update requirements.txt  
`pip-compile -r requirements.in -o requirements.txt`

TIP: before compile list of packages, remove requirements.txt if exists. Otherwise, conflicts 
as pip-compile read and try to update from.


4. install packages in requirements.txt  
`pip3 install -r requirements.txt`


######################
Data scientist tool set
######################
# Mac tools
- simplenote
- vscode
- sublime
- conda
- git
- python3
- jupyter lab
- zsh shell, iTerm and on-my-zsh



## Big Data ML Framework (Tools)
https://towardsdatascience.com/10-most-popular-machine-learning-software-tools-in-2019-678b80643ceb
- TensorFlow
- Google Cloud ML Engine
- Amazon Machine Learning (AML)
- Accord.NET
- Apache Mahout
- Shogun
- Oryx 2
- Apache Singa
- Apache Spark MLlib
- Google ML Kit for Mobile
- Apple’s Core ML
- h2o
- kubeflow

https://activewizards.com/blog/top-20-python-libraries-for-data-science-in-2018/
## Python3 packages
### Core Libraries & Statistics
pandas
numpy
scipy
matplotlib
seaborn
plotly
bokeh
pydot
requests
statsmodels

### Machine Learning 
scikit-learn
pybrain
xgboost
lightgbm
eli5
pytorch
keras
tensorflow
dist-keras
elephas
nltk
spacy
gensim
scrapy
pyqt
opencv
