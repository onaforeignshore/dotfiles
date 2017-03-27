COLOR_BLACK="\e[0;30m"
COLOR_BLUE="\e[0;34m"
COLOR_GREEN="\e[0;32m"
COLOR_CYAN="\e[0;36m"
COLOR_PINK="\e[0;35m"
COLOR_RED="\e[0;31m"
COLOR_PURPLE="\e[0;35m"
COLOR_BROWN="\e[0;33m"
COLOR_LIGHTGRAY="\e[0;37m"
COLOR_DARKGRAY="\e[1;30m"
COLOR_LIGHTBLUE="\e[1;34m"
COLOR_LIGHTGREEN="\e[1;32m"
COLOR_LIGHTCYAN="\e[1;36m"
COLOR_LIGHTRED="\e[1;31m"
COLOR_LIGHTPURPLE="\e[1;35m"
COLOR_YELLOW="\e[1;33m"
COLOR_WHITE="\e[1;37m"
COLOR_NONE="\e[0m"

# set ls colors
#                                        ATTRIBUTES                                            COLORS
#                ┌────────────────────── directory (ex)                                        Norm  Bold  Color
#                │ ┌──────────────────── symbolic link (fx)                                    a     A     black / dark gray
#                │ │ ┌────────────────── socket (cx)                                           b     B     red
#                │ │ │ ┌──────────────── pipe (dx)                                             c     C     green
#                │ │ │ │ ┌────────────── executable (bx)                                       d     D     brown / yellow
#                │ │ │ │ │ ┌──────────── block special (eg)                                    e     E     blue
#                │ │ │ │ │ │ ┌────────── character special (ed)                                f     F     magenta
#                │ │ │ │ │ │ │ ┌──────── executable with setuid bit set (ab)                   g     G     cyan
#                │ │ │ │ │ │ │ │ ┌────── executable with setgid bit set (ag)                   h     H     light grey / white
#                │ │ │ │ │ │ │ │ │ ┌──── directory writable to others, with sticky bit (ac)
#                │ │ │ │ │ │ │ │ │ │ ┌── directory writable to other, without sticky bit (ad)  x default foreground or background
#export LSCOLORS="exfxcxdxbxegedabagacad" # default colors
export LSCOLORS="gxgebxfxcxegedachcacad" # my colors