# Path to your oh-my-zsh installation.
  export ZSH=/home/tom/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="nicoulaj"
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker vagrant dircycle pip npm sudo fasd vscode)


# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nsound="pacmd play-file /usr/share/sounds/ubuntu/notifications/Slick.ogg 1"
unalias gcp
alias gs='git status'
alias iii='sudo apt-get install'
alias uuu='sudo apt-get remove'
alias db='cd ~/Dropbox'
alias cw='/etc/cron.hourly/changer.sh'
alias mouse="dconf write /org/gnome/settings-daemon/peripherals/touchpad/touchpad-enabled true"
alias apm=apm-beta
alias cdmag='cd /home/tom/git/forecast/docs/magistrska/predloga'
alias gc='git checkout'
alias grhh='git reset --hard HEAD~1'
alias update-vscode="bash /home/tom/git/vscode-updater/update.sh"

alias tv-disable='sudo teamviewer daemon disable'
alias tv-enable='sudo teamviewer daemon enable'

c(){unsetopt no_match; python3 -c "print($*)"}
c

o(){gnome-open $1}
pdf() {evince $1 &}
gcp() {sudo gcp -rf --preserve=ownership $1 $2}
notify() {nsound && sudo notify-send "$1" "$2"}
timer() {sleep $1 && notify $2}
boot() {`while true; do sleep 10 && killall pulseaduio 2>/dev/null; done` &}
gall() {gaa && gcam $1}
gcae() {git commit --no-edit --amend}
gull() {git add -u && gcmsg $1}
zz(){zip -r $1.zip $1}
update(){yes | sudo apt-get update; yes | sudo apt-get install; yes | sudo apt-get upgrade; sudo apt-get autoremove }
#work(){timer 1500 "END of Pomodoro"}
work(){ {for i in {25..01}; do printf "\r $i"; sleep 60; done}; notify "STOP" "END of Pomodoro"}
pause(){ {for i in {05..01}; do printf "\r $i"; sleep 60; done}; notify "HEY!" "END of Pause"}
youtube-dl-mp3(){youtube-dl --extract-audio --audio-format mp3 $1}
mag(){bibtex magistrska_naloga; pdflatex magistrska_naloga.tex}
svg2pdf(){inkscape -D -z --file=$1.svg --export-pdf=$1.pdf --export-area-drawing}
basename(){echo ${1%\.*}}
rvnc(){/opt/VNC ~/vncconnection.vnc }
fixwifi(){ sudo rmmod ideapad_laptop && sudo service network-manager restart }
# pause(){timer 300 "Start WORKING!"}
alias mouse-solver="sudo modprobe -r psmouse && sudo modprobe psmouse "
alias sql='mysql -uroot -proot -D forecast'
export PAGER="less"
export FLASK_APP=./server.py
alias mntserver='sshfs -o idmap=user tom@server:/media /mnt/server && sshfs -o idmap=user tom@server:/home/tom /mnt/server-home && cd /mnt'
alias p='psql -h localhost -U postgres -d orderbook'
alias touchpad='sudo modprobe -r psmouse && sudo modprobe psmouse'
alias ip="ip -c"

#xinput --set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Noise Cancellation" 20 20
#export PAGER=pager
export PATH=~/.local/bin/:$PATH # make vs-code work



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias fixqbit='export QT_SCALE_FACTOR=1'


export DISPLAY=localhost:0.0

#echo fs.inotify.max_user_watches=2048000 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/bin:$(getconf PATH):$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tom/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/tom/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/tom/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/tom/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
