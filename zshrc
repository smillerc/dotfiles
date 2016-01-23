# oh my zsh config
export ZSH=/home/sam/.oh-my-zsh
ZSH_THEME="clean"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
 
plugins=(git)

# Path modifications
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export CUDA_HOME=/usr/local/cuda-7.5
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64
PATH=${CUDA_HOME}/bin:${PATH}
export PATH
export PATH="~/anaconda3/bin:$PATH"
export PATH="~/anaconda/bin:$PATH"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
 export EDITOR='vi'
fi
 
#Aliases 
alias python2="~/anaconda2/bin/python"
alias python3="~/anaconda3/bin/python"
alias jnb="~/anaconda3/bin/jupyter-notebook"
alias conda3="~/anaconda3/bin/conda"
alias conda2="~/anaconda2/bin/conda"
alias pip3="~/anaconda3/bin/pip"
alias pip2="~/anaconda2/bin/pip"
alias vim3="~/opt/vim_python3/bin/vim"
 

