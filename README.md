# Data Science Learning (WIP)

![GitHub](https://img.shields.io/github/license/lykmapipo/data-science-learning)
![Maintenance](https://img.shields.io/maintenance/yes/2021)
![GitHub forks](https://img.shields.io/github/forks/lykmapipo/data-science-learning)
![GitHub Repo stars](https://img.shields.io/github/stars/lykmapipo/data-science-learning)
![GitHub watchers](https://img.shields.io/github/watchers/lykmapipo/data-science-learning)

![GitHub issues](https://img.shields.io/github/issues/lykmapipo/data-science-learning)
![GitHub closed issues](https://img.shields.io/github/issues-closed/lykmapipo/data-science-learning)
![GitHub pull requests](https://img.shields.io/github/issues-pr/lykmapipo/data-science-learning)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/lykmapipo/data-science-learning)

## Requirements

- [Ubuntu v18+](https://ubuntu.com/)
- [Julia v1.6.1+](https://julialang.org/)
- [Python v3.8.0+](https://www.python.org/)
- [R v4.0.5+](https://www.r-project.org/)

## Installation

### Install Python

- Install [pyenv](https://github.com/pyenv/pyenv) using [pyenv-installer](https://github.com/pyenv/pyenv-installer)
```sh
$ curl https://pyenv.run | bash
```

- Install python
```sh
$ pyenv install -v 3.8.0
```

### Install Julia

- Install [juliavm](https://github.com/pmargreff/juliavm)
```sh
$ git clone https://github.com/pmargreff/juliavm
$ cd juliavm
$ chmod u+x install.sh
$ ./install.sh
```

- Install julia
```sh
juliavm install 1.6.1
```

- Link julia with jupyter notebook
```sh
$ julia
$ press ]
$ add IJulia
```

### Install R

- Install R in Ubuntu 18
```sh
$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
$ sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
$ sudo apt update
$ sudo apt install r-base
```

- Install [renv](https://rstudio.github.io/renv/)
```sh
$ sudo -i R
$ install.packages("remotes")
$ remotes::install_github("rstudio/renv")
```

- Link R with jupyter notebook
```sh
$ sudo -i R
$ install.packages('IRkernel')
$ IRkernel::installspec(user = FALSE)
```

## Usage

- Git clone this repository
```sh
$ git clone git@github.com:lykmapipo/data-science-learning.git
$ cd data-science-learning
```

- Use `python`
```sh
$ pyenv local 3.8.0
$ pip install --upgrade pip
$ pip install pipenv
$ pipenv shell # Type 'exit' or 'Ctrl+D' to return.
$ pipenv install
```

- Use `julia` by open new terminal and run
```sh
$ julia
$ ]
$ activate .
$ instantiate
```

- Use `R` by open new terminal and run
```sh
$ renv::restore()
```

- Open jupyter notebook
```sh
$ jupyter notebook
```

## Contribute

It will be nice, if you open an issue first so that we can know what is going on, then, fork this repo and push in your ideas. Do not forget to add a bit of test(s) of what value you adding.

## Licence

The MIT License (MIT)

Copyright (c) lykmapipo & Contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.