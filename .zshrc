# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
export PYTHONPATH="${PYTHONPATH}:/Users/eshoshan/Library/Python/3.6/bin"
# Path to your oh-my-zsh installation.
export ZSH="/Users/eshoshan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
kubectl
)

source $ZSH/oh-my-zsh.sh
# User configuration

#Kube PS1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1
export KUBE_PS1_NS_ENABLE=true

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias k="kubectl"
alias d="docker"
alias settings="vi ~/.zshrc"
alias p="~/Documents/Projects"
alias pr="~/Documents/Project-Resouces"
alias c="code ."
alias px="~/Documents/Projects/asx-xena"
alias pa="~/Documents/Projects/acuvue"
alias j="~/Documents/Projects/jpm_shared_lib"
alias secret="~/NotSecret"
alias sec="secret"
alias cert="cd ~/NotSecret/certs"
alias untar='tar -xcf'
alias reload="source ~/.zshrc"
alias o="open -R ."

#Git Vars
branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

#Git Aliases
alias gcanf="git commit -a --amend --no-edit && gpf"
alias gcan="git commit -a --amend --no-edit"
alias grh!="git reset --hard && git reset --hard $branch_name" 
alias grho="git reset --hard origin/$branch_name"
alias grh="git reset --hard"

alias glog-"git log --oneline"
alias gbD="git branch -D"
alias gcob="git checkout -b"

#Terraform Aliases
alias t="terraform"
alias ti="terraform init"
alias tp="terraform plan"
alias ts="terraform show"
alias ta="terraform apply"

#Helm Aliases
alias hla='helm ls --all'
alias hl='helm ls'
alias hu='helm uninstall'
alias hg='helm get'
alias hh='helm history'
alias ss='statefulset'
alias dep='deployment'

#Docker Aliases
alias db='docker build'
alias dr='docker run -it'
alias dpl='docker pull'
alias dp='docker push'

#Kubernetes Aliases
alias k='kubectl'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kx="kubectl exec -it"
alias ke="kubectl edit"

alias kgi='kubectl get ingress'
alias kgin='kubectl get ingress -n'
alias kgp='kubectl get pods'
alias kgpw='kubectl get pods -o wide'
alias kgpn='kubectl get pods -n'
alias kgd='kubectl get deployments'
alias kgdn='kubectl get deployments -n'
alias kgs='kubectl get service'
alias kgsn='kubectl get service -n'
alias kgn='kubectl get namespaces'
alias kdp='kubectl describe pods'
alias kdpn='kdp -n'
alias kdi='k describe ingress'
alias kdin='kdi -n'
alias kset='k config set-context --current'
alias klog='k logs'
alias klogn='klog --namespace'
alias kl="kubectl logs -f"
alias kgd="kubectl get deployments"
alias ked="kubectl edit deployment"
alias kgse="kubectl get secrets"
alias kgno="kubectl get nodes -L beta.kubernetes.io/instance-type,worker-group,topology.kubernetes.io/region"
alias kgnosl="kubectl get nodes --show-labels"
alias kdno="kubectl describe nodes"
alias kgcr="kubectl get clusterrole"
alias kgcrb="kubectl get clusterrolebinding"
alias kgr="kubectl get roles"
alias kgrb="kubectl get rolebindings"
alias kgvw="kubectl get validatingwebhookconfigurations"
alias kgmw="kubectl get MutatingWebhookConfiguration"

#Skaffold
alias s="skaffold"
alias sb="skaffold build"
alias sr="skaffold run"
alias sd="skaffold delete"

autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ ll ; }

export PATH=~/.local/bin:$PATH
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
