# Git branch https://gist.github.com/joseluisq/1e96c54fa4e1e5647940
echo '# Terminal' >> ~/.bash_profile
echo >> ~/.bash_profile
echo '#-> Git branch' >> ~/.bash_profile
echo 'parse_git_branch() {' >> ~/.bash_profile
echo "  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'" >> ~/.bash_profile
echo '}' >> ~/.bash_profile
echo 'export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "' >> ~/.bash_profile
echo >> ~/.bash_profile

# Git autocomplete
echo '#-> Git autocomplete' >> ~/.bash_profile
brew install git bash-completion
echo '[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}' >> ~/.bash_profile
echo >> ~/.bash_profile

source ~/.bash_profile