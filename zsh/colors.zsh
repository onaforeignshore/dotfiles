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
export LSCOLORS="gxgebxfxcxegedachcacad" # my colors