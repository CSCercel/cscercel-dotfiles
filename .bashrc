#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#######################################
# Shell Tools
#######################################

# Hook direnv for Python Virtual Envs
eval "$(direnv hook bash)"

# Hook Starship for a pretty terminal
eval "$(starship init bash)"

# Hook cool stuff I found from Omarchy
eval "$(fzf --bash)"
eval "$(zoxide init bash)"

#######################################
# Custom Aliases
#######################################

alias ls='eza -l --group-directories-first --icons=always'
alias lsa='eza -la --group-directories-first --icons=always'
alias lt='eza -T --group-directories-first --icons=always'
alias lta='eza -Ta --group-directories-first --icons=always'

#######################################
# Functions
#######################################

# Function to setup python virtual env
mkpyenv() {
    # Default: use current directory
    local dir="${1:-.}"
    mkdir -p "$dir"
    cd "$dir" || return

    # Create venv if it doesn't exist
    if [ ! -d ".venv" ]; then
        echo "Creating virtual environment in $(pwd)/.venv ..."
        python3 -m venv .venv
    else
        echo "Virtual environment already exists."
    fi

    # Create .envrc if missing
    if [ ! -f ".envrc" ]; then
        echo 'source .venv/bin/activate' > .envrc
        echo "Created .envrc"
    fi

    # Approve direnv for this folder
    direnv allow

    echo "✅ Python environment ready and auto-activating with direnv!"
}
