# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/user/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

JAVA_8_HOME="/home/user/Downloads/Applications/jdk1.8.0_231"
JAVA_11_HOME="/home/user/Downloads/Applications/jdk-11.0.6"
export JAVA_HOME=$JAVA_8_HOME
alias java11="export JAVA_HOME=$JAVA_11_HOME"
alias java8="export JAVA_HOME=$JAVA_8_HOME"

SCALA_HOME="/home/user/Downloads/Applications/scala-2.13.1"
MVN_HOME="/home/user/Downloads/Applications/apache-maven-3.6.2"
GRADLE_HOME="/home/user/Downloads/Applications/gradle-6.2.2"
NODE_HOME="/home/user/Downloads/Applications/node-v12.16.1-linux-x64"
PATH=$PATH:$JAVA_HOME/bin:$MVN_HOME/bin:$NODE_HOME/bin:$SCALA_HOME/bin:$GRADLE_HOME/bin
export PATH MVN_HOME NODE_HOME GRADLE_HOME



alias home="cd ~ && fortune|cowsay"
alias vi="vim"
alias ll='ls -al'
# git log --all --no-merge |       --author='wumingsheng'  |  --graph --stat
alias gitlog="git log --color --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Cblue %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


 




plugins=(git
mvn
zsh-autosuggestions
zsh-syntax-highlighting
docker
pip
vagrant
ansible)


source $ZSH/oh-my-zsh.sh


source ~/.zplug/init.zsh

# https://github.com/paulirish/git-open
zplug "paulirish/git-open", as:plugin
# To manage zplug itself like other packages, write the following in your .zshrc.
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "romkatv/powerlevel10k", as:theme
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh



















[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
