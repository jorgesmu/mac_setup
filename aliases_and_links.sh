# Sublime
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" 

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

# Others
echo '#-> Others' >> ~/.bash_profile
echo 'alias ll="ls -l"' >> ~/.bash_profile
# Taken from: https://stackoverflow.com/questions/70587/what-are-your-most-important-console-aliases
echo 'alias mkcd="_(){ mkdir \$1; cd \$1; }; _"' >> ~/.bash_profile
echo 'alias ls="ls -Gp"' >> ~/.bash_profile
echo 'alias l.="ls -d .* --color=auto"' >> ~/.bash_profile
echo 'alias ..="cd .."' >> ~/.bash_profile
echo "alias tree=\"find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'\"" >> ~/.bash_profile
echo 'alias c="clear"' >> ~/.bash_profile
echo >> ~/.bash_profile

source ~/.bash_profile