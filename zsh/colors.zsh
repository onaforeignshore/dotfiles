autoload colors && colors

# Clear LSCOLORS
unset LSCOLORS
export CLICOLOR=1

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

#export LSCOLORS='ExGxBxDxCxEgEdxbxgxcxd' # ls colors like in Linux
# used https://geoff.greer.fm/lscolors/ to convert them to LS_COLORS:
#export LS_COLORS='di=1;34:ln=1;36:so=1;31:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43'

export LSCOLORS="gxgebxfxcxegedachcacad" # my colors
# used https://geoff.greer.fm/lscolors/ to convert them to LS_COLORS:
export LS_COLORS='di=36:ln=36;44:so=31:pi=35:ex=32:bd=34;46:cd=34;43:su=30;42:sg=37;42:tw=30;42:ow=30;43'
