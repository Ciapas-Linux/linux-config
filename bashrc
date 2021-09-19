

# If not running interactively, don't do anything
#case $- in
#    *i*) ;;
#      *) return;;
#esac


HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize
HISTSIZE=12000
HISTFILESIZE=22000



# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt



export JAVA_HOME="/home/$USER/JDK/graalvm-ce-java16"
export ANDROID_SDK_ROOT=/home/$USER/Android/Sdk
export ANDROID_HOME=/home/$USER/Android/Sdk 
export ANDROID_NDK_HOME=/home/$USER/Android/Sdk/ndk/23.0.7599858
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'



export PATH="$PATH:$ANDROID_SDK_ROOT/build-tools/31.0.0:\
$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:\
$ANDROID_SDK_ROOT/emulator:\
$ANDROID_SDK_ROOT/tools:\
$ANDROID_SDK_ROOT/platform-tools:\
$JAVA_HOME/bin:\
$ANDROID_NDK_HOME:\
$ANDROID_HOME/bin:\
/sbin:\
/usr/sbin:\
/usr/local/sbin"


# some  aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ls='/opt/coreutils/bin/ls'
alias dir='/opt/coreutils/bin/dir'
alias gadaj='wine /home/kot/bin/gadaj'
alias vol='alsamixer'

# add icon for bash dir & ls
source ~/.local/share/icons-in-terminal/icons_bash.sh


# wellcome:
chafa /home/kot/winxplogo.png
rig -m
/opt/coreutils/bin/date
echo "< Windows ☣ XP ☣ GOLD ☣ Copyright(c) ☣ ® • 2021 >"




