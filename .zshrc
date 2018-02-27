# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/joeferrairo/.oh-my-zsh
source /Users/joeferrairo/.aliases
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/Users/joeferrairo/Desktop/Code/wa-devenv/kubernetes
bindkey -v

ZSH_THEME="robbyrussell"

plugins=(git rails ruby bundler sudo)

source $ZSH/oh-my-zsh.sh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/joeferrairo/Desktop/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"
  source '/Users/joeferrairo/google-cloud-sdk/path.zsh.inc'
  source '/Users/joeferrairo/google-cloud-sdk/completion.zsh.inc'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/joeferrairo/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/joeferrairo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/joeferrairo/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/joeferrairo/google-cloud-sdk/completion.zsh.inc'; fi
