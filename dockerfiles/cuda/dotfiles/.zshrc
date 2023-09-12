##### Export
export LANG='en_US.UTF-8'
export LANGUAGE='en_US:en'
export LC_ALL='en_US.UTF-8'
export TERM='xterm-256color'

##### Alias
alias vim="nvim"
alias vi="nvim"
alias tmux="tmux -2u"
alias mamba="micromamba"

##### Zsh/Oh-my-Zsh Configuration
export ZSH="$HOME/.oh-my-zsh"
export SHELL="/bin/zsh"
ZSH_THEME="agnoster"
plugins=(
	git
	sudo
	up
	autojump
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
)


source $ZSH/oh-my-zsh.sh

##### Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

prompt_context() {
    if [[ "$USER" != "$DEFAULT_USER" || -n "SSH_CLIENT" ]]; then
		prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
	fi
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jinmo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jinmo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jinmo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jinmo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
