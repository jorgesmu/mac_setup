# https://github.com/pyenv/pyenv
PYTHON_VERSION=3.7.2
brew update
brew install pyenv
pyenv install $PYTHON_VERSION

echo '# Python' >> ~/.bash_profile
echo >> ~/.bash_profile

# Pyenv
echo '#-> Pyenv' >> ~/.bash_profile
echo "pyenv global $PYTHON_VERSION" >> ~/.bash_profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
echo >> ~/.bash_profile
source ~/.bash_profile

# Virtual env
pip install --upgrade pip
pip install virtualenv

# Virtualenvwrapper
pip install virtualenvwrapper

echo '#-> Virtualenvwrapper' >> ~/.bash_profile
echo "export WORKON_HOME=~/Envs" >> ~/.bash_profile
source ~/.bash_profile
mkdir -p $WORKON_HOME
echo "source ~/.pyenv/versions/$PYTHON_VERSION/bin/virtualenvwrapper.sh" >> ~/.bash_profile
echo >> ~/.bash_profile