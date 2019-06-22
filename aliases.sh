echo '# Aliases' >> ~/.bash_profile
echo >> ~/.bash_profile

# Venv
echo '#-> Virtual env' >> ~/.bash_profile
echo 'alias create_venv="virtualenv ENV"' >> ~/.bash_profile
echo 'alias activate_venv="source ./ENV/bin/activate"' >> ~/.bash_profile
echo 'alias deactivate_venv="deactivate"' >> ~/.bash_profile
echo >> ~/.bash_profile

echo '#-> Venvwrapper' >> ~/.bash_profile
echo 'alias create_venvw="mkvirtualenv"' >> ~/.bash_profile
echo >> ~/.bash_profile

source ~/.bash_profile