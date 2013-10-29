# Prompt setting
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
color_off='\e[0m' # Text Reset
black='\e[0;30m' # Black
red='\e[0;31m' # Red
green='\e[0;32m' # Green
yellow='\e[0;33m' # Yellow
blue='\e[0;34m' # Blue
purple='\e[0;35m' # Purple
cyan='\e[0;36m' # Cyan
white='\e[0;37m' # White

# Display git branch in the prompt
if [[ "$(id -u)" -eq 0 ]]; then
    PS1="\[${cyan}\]\u\[${blue}\]@\[${purple}\]\h \[${yellow}\]\w\[${red}\]\$(__git_ps1)\n\[${red}\]# \[${color_off}\]"
else
    PS1="\[${cyan}\]\u\[${blue}\]@\[${purple}\]\h \[${yellow}\]\w\[${red}\]\$(__git_ps1)\n\[${green}\]$ \[${color_off}\]"
fi
export PS1
