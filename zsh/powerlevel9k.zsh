#!usr/bin/env zsh
# vim:ft=zsh ts=4 sw=4 noet fenc=utf-8
###########################################################################
# @title POWERLEVEL9K Sample configuration file
#
# @source https://github.com/bhilburn/powerlevel9k
#
# @author [onaforeignshore](https://github.com/onaforeignshore)
#
# @version Last update: July 23, 2018
#
# @info
#  Please note:
#
#    - This configuration uses tab size 4 and no spaces.
#
#    - Everything is commented out, as this file is meant for you to
#      customize the settings to your liking. Simply uncomment the
#      applicable line to set your overrides.
#
#    - I use a "Nerd" font, so the unicode characters in this file
#      may not render correctly if you do not use a nerd font.
#
#  For troubleshooting, please refer to the
#  [wiki](https://github.com/bhilburn/powerlevel9k/wiki/Troubleshooting)
#
##

#=======================================
# TABLE OF CONTENTS
#=======================================
#
# === GENERAL INFORMATION
#     --- Segment Customization
#     --- Segments with States
#     --- Glue Segments Together
# === GENERAL SETTINGS
# === FONT SUPPORT
# === COLOR SCHEMES
# === PROMPT CONFIGURATION
# === SYSTEM STATUS SEGMENTS
#         *** background_jobs
#         *** battery
#         *** context
#          *** date
#         *** dir
#         *** dir_writable
#         *** disk_usage
#         *** history
#         *** host
#         *** ip
#         *** load
#         *** os_icon
#         *** public_ip
#         *** ram
#         *** root_indicator
#         *** ssh
#         *** status
#         *** swap
#         *** time
#         *** todo
#         *** user
#         *** vi_mode
#         *** vpn_ip
# === DEVELOPMENT ENVIRONMENT SEGMENTS
#         *** vcs
#         *** vcs symbols
# === LANGUAGE SEGMENTS
#     --- GoLang Segments
#         *** go_version
#     --- Javascript / Node.js Segments
#         *** node_version
#         *** node_env
#         *** nvm
#     --- PHP Segments
#         *** php_version
#         *** symfony_tests
#         *** symfony_version
#     --- Python Segments
#         *** anaconda
#         *** pyenv
#         *** virtualenv
#     --- Ruby Segments
#         *** chruby
#         *** rbenv
#         *** rspec_stats
#     --- Rust Segments
#         *** rust_version
#     --- Swift Segments
#         *** swift_version
# === CLOUD SEGMENTS
#     --- AWS Segments
#         *** aws
#         *** aws_eb_env
#     --- Docker Segments
#         *** docker_machine
# === OTHER SEGMENTS
#         *** command_execution_time
#         *** dropbox
#         *** kubecontext
#         *** test_stats
#         *** Cursor Shape
# === MY CUSTOM SEGMENTS
#         *** custom_command
# === PROMPT CUSTOMIZATION
# === LOADING POWERLEVEL9K
#     --- Option 1: Install for Vanilla ZSH
#     --- Option 2: Install for Oh-My-ZSH
#     --- Option 3: Install for Prezto
#     --- Option 4: Install for antigen
#     --- Option 5: Install for Zplug
#     --- Option 6: Install for Zgen
#     --- Option 7: Install for Antibody
#     --- Option 8: Install for ZPM
#     --- Option 9: Install for ZIM
#

#=======================================
# GENERAL INFORMATION
#=======================================

#---------------------------------------
# Segment Customization
#---------------------------------------
#
# For each segment in your prompt, you can specify a foreground and background color by setting them in your ~/.zshrc.
#
# Format:
#     POWERLEVEL9K_<segment[_state]>_FOREGROUND=""
#     POWERLEVEL9K_<segment[_state]>_BACKGROUND=""
#
# Example:
#     POWERLEVEL9K_TIME_FOREGROUND="red"
#     POWERLEVEL9K_TIME_BACKGROUND="021" # Dark blue
#
# For the default color, you can use "$DEFAULT_COLOR".
# You can use color values, eg. "red", "blue", etc.
# You can also use colorcode values. For a full list of supported colors, run this little code in your terminal:
#
#     for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
#
# You can also set a segment icon and color.
#
# Format:
#     POWERLEVEL9K_<segment[_state]>_ICON=
#     POWERLEVEL9K_<segment[_state]>_ICON_COLOR=
#
# Example:
#     POWERLEVEL9K_TIME_ICON="T:"
#     POWERLEVEL9K_TIME_ICON_COLOR="252"
#
# You can also set a segment to be printed in bold by setting the option to 'true'.
#
# Format:
#     POWERLEVEL9K_<segment[_state]>_BOLD=
#
# Example:
#     POWERLEVEL9K_TIME_BOLD=true
#

#---------------------------------------
# Segments with States
#---------------------------------------
#
# Some segments have state. For example, if you become root, or modify a file in your version control system, segments
# try to reflect this fact by changing the color. For these segments you still can modify the color to your needs by
# setting a variable like POWERLEVEL9K_<name-of-segment>_<state>_BACKGROUND. Segments with state are:
#
#     SEGMENT           STATES
#     battery           LOW, CHARGING, CHARGED, DISCONNECTED
#     context           DEFAULT, ROOT, SUDO, REMOTE, REMOTE_SUDO
#     dir               DEFAULT, HOME, HOME_SUBFOLDER, NOT_WRITABLE, ETC
#     dir_writable      FORBIDDEN
#     disk_usage        NORMAL, WARNING, CRITICAL
#     host              LOCAL, REMOTE
#     load              NORMAL, WARNING, CRITICAL
#     status            OK (note: only, if verbose is not false), ERROR, ERROR_CR
#     test_stats        GOOD, AVG, BAD
#     user              DEFAULT, ROOT, SUDO
#     vcs               CLEAN, MODIFIED, UNTRACKED
#     vi_mode           NORMAL, INSERT, VISUAL
#

#---------------------------------------
# Glue Segments Together
#---------------------------------------
#
# It is possible to display two segments as one, by adding _joined to your segment definition. The segments are always
# joined with their predecessor, so be sure that this is always visible. Otherwise you may get unwanted results. For
# example, if you want to join status and background_jobs in your right prompt together, set:
#
#     POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs_joined)
#
# This works with every segment, even with custom ones and with conditional ones.
#

#=======================================
# GENERAL SETTINGS
#=======================================
# Uncomment this line for ZIM installations
#POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme

# Uncomment this line for Antigen installations
#POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Uncomment this line to try the beta asynchronous generator
#POWERLEVEL9K_GENERATOR="zsh-async"

#=======================================
# FONT SUPPORT
#=======================================

# NOTE:
# To use the features below, you have to install the font and make it the default font in your terminal emulator.

# For installation instructions for Powerline Fonts
# See: https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation

# Uncomment if you are using Awesome Powerline Font, and you prefer flat segment transitions
#POWERLEVEL9K_MODE="flat"

# Uncomment if you are using Awesome Terminal Font
# See: https://github.com/gabrielelana/awesome-terminal-fonts
#POWERLEVEL9K_MODE="awesome-fontconfig"

# Uncomment if you are using Awesome Patched Font
# See: https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
#POWERLEVEL9K_MODE="awesome-flat"

# Uncomment if you are using a Nerd supported font
# See: https://github.com/ryanoasis/nerd-fonts
POWERLEVEL9K_MODE="nerdfont-complete"

#=======================================
# COLOR SCHEMES
#=======================================

POWERLEVEL9K_COLOR_SCHEME="dark"                                     # "light" or "dark"

#=======================================
# PROMPT CONFIGURATION
#=======================================

# multiline prompt
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true                                 # double line prompt
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true                                # place the right prompt on second line
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{9}%} ❯ %{%F{default}%} "

#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true                                # new line before prompt
#POWERLEVEL9K_DISABLE_RPROMPT=true                                   # disable the right prompt

# segment/sub segment separators
# uncomment a set of separators below
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B0'                       # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B2'                      # 
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'                    # 
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B3'                   # 

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'                         # 
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'                        # 
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B5'                      # 
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B7'                     # 

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B8 '                      # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \uE0BA'                     #  
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B9 '                   # 
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' \uE0BB'                  #  

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0BC '                      # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \uE0BE'                     #  
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0BD '                   # 
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' \uE0BF'                  #  

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0C0 '                      # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \uE0C2'                     #  
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0C1 '                   # 
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' \uE0C3'                  #  

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0C4 '                      # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \uE0C5'                     #  
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0C6'                       # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0C7'                      #  
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0C8 '                      # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \uE0CA'                     # 
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0D2 '                      # 
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \uE0D4'                     # 
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

# Uncomment this line to use fancy edge separators
POWERLEVEL9K_FANCY_EDGE=true

# Uncomment this line to show the right prompt icons on the left
POWERLEVEL9K_RPROMPT_ICON_LEFT=true

# Uncomment this line to simulate touching the right edge of the screen
POWERLEVEL9K_RPROMPT_TOUCH_EDGE=true

# *****  Cursor Shape  *****
POWERLEVEL9K_CURSOR_SHAPE=true                                       # Set to true to enable cursor shape change on supported terminals

# Cursor shape can be box [], hbar _ or vbar |
POWERLEVEL9K_CURSOR_SHAPE_NORMAL="box"
POWERLEVEL9K_CURSOR_SHAPE_INSERT="vbar"
POWERLEVEL9K_CURSOR_SHAPE_VISUAL="box"
POWERLEVEL9K_CURSOR_SHAPE_DEFAULT="hbar"

#DEFAULT_USER="$USER"                                   # Username to consider a "default context" (you can also set $USER).

#=======================================
# SYSTEM STATUS SEGMENT SETTINGS
#=======================================

# *****  background_jobs  *****
# This allows you to get more details - running jobs + suspended jobs
#POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true

# Uncomment this line to always show the jobs count (even if it's zero).
#POWERLEVEL9K_BACKGROUND_JOBS_ALWAYS_SHOW=true

#POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=""
#POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=""
POWERLEVEL9K_BACKGROUND_JOBS_ICON="\uF013 "                          # F013 
POWERLEVEL9K_BACKGROUND_JOBS_ICON_COLOR="255"
#POWERLEVEL9K_BACKGROUND_JOBS_BOLD=true

# *****  battery  *****
# This segment will display your current battery status (fails gracefully on systems without a battery). It is
# supported on both OSX and Linux (note that it requires acpi on Linux).

#POWERLEVEL9K_BATTERY_LOW_THRESHOLD=10                               # Threshold to consider battery level critical.
#POWERLEVEL9K_BATTERY_VERBOSE=true                                   # Display time remaining next to battery level.

#POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=""
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="250"
#POWERLEVEL9K_BATTERY_CHARGED_ICON=""
POWERLEVEL9K_BATTERY_CHARGED_ICON_COLOR="255"
#POWERLEVEL9K_BATTERY_CHARGED_BOLD=true

#POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=""
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="250"
#POWERLEVEL9K_BATTERY_CHARGING_ICON=""
POWERLEVEL9K_BATTERY_CHARGING_ICON_COLOR="255"
#POWERLEVEL9K_BATTERY_CHARGING_BOLD=true

#POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=""
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="250"
#POWERLEVEL9K_BATTERY_DISCONNECTED_ICON=""
POWERLEVEL9K_BATTERY_DISCONNECTED_ICON_COLOR="255"
#POWERLEVEL9K_BATTERY_DISCONNECTED_BOLD=true

#POWERLEVEL9K_BATTERY_LOW_BACKGROUND=""
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="250"
#POWERLEVEL9K_BATTERY_LOW_ICON=""
POWERLEVEL9K_BATTERY_LOW_ICON_COLOR="255"
#POWERLEVEL9K_BATTERY_LOW_BOLD=true

# *** choose from here for changing background by current battery level
# set if you want the background to change color with level. this overrides the state settings in the color selection.
# You can still specify foreground color and bold though.
#POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(196 202 208 214 220 226 190 154 118  82  46) # bright
#POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(124 130 136 142 148 112  76  40  34  28  22) # normal
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(  88  94 100 106  70  34  28  22) # subdued

# POWERLEVEL9K_BATTERY_STAGES accepts either a string or an array.
# Note that if you use a string for characters that are wider than a single character will cause the icon to be very
# close to the remaining time. In this case, it is better to use the array version of `POWERLEVEL9K_BATTERY_STAGES`,
# so that you can add a space after.

# Uncomment only one of the following, or create your own

POWERLEVEL9K_BATTERY_STAGES="" #  \uF244  \uF243  \uF242  \uF241  \uF240
#POWERLEVEL9K_BATTERY_STAGES=("\uF244 " "\uF243 " "\uF242 " "\uF241 " "\uF240 ")

#POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
#POWERLEVEL9K_BATTERY_STAGES=("\u2581 " "\u2582 " "\u2583 " "\u2584 " "\u2585 " "\u2586 " "\u2587 " "\u2588 ")

#POWERLEVEL9K_BATTERY_STAGES="▏▎▍▌▋▊▉█"
#POWERLEVEL9K_BATTERY_STAGES=("\u258F " "\u258E " "\u258D " "\u258C " "\u258B " "\u258A " "\u2589 " "\u2588 ")

# Uncomment this line if you want to use this indicator
# POWERLEVEL9K_BATTERY_STAGES=( "▏    ▏" "▎    ▏" "▍    ▏" "▌    ▏" "▋    ▏" "▊    ▏" "▉    ▏" "█    ▏" "█▏   ▏" "█▎   ▏" "█▍   ▏" "█▌   ▏" "█▋   ▏" "█▊   ▏" "█▉   ▏" "██   ▏" "██   ▏" "██▎  ▏" "██▍  ▏" "██▌  ▏" "██▋  ▏" "██▊  ▏" "██▉  ▏" "███  ▏" "███  ▏" "███▎ ▏" "███▍ ▏" "███▌ ▏" "███▋ ▏" "███▊ ▏" "███▉ ▏" "████ ▏" "████ ▏" "████▎▏" "████▍▏" "████▌▏" "████▋▏" "████▊▏" "████▉▏" "█████▏" )

# *****  context  *****
# The context segment (user@host string) is conditional. By default, it will only print if you are not your "normal"
# user (including if you are root), or if you are SSH'd to a remote host.
#
# To use this feature, make sure the context segment is enabled in your prompt elements (it is by default), and define
# a POWERLEVEL9K_DEFAULT_USER in your ~/.zshrc.

#POWERLEVEL9K_CONTEXT_ALWAYS_SHOW=true                               # Always show this segment, including $USER and hostname.
#POWERLEVEL9K_CONTEXT_ALWAYS_SHOW_USER=true                          # Always show the username, but conditionalize the hostname.
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@%m"                               # Default context prompt (username@machine).

# Refer to the ZSH Documentation for all possible expansions, including deeper host depths.
# You can customize the context segment. For example, you can make it to print the full hostname by setting
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"

#POWERLEVEL9K_CONTEXT_HOST_DEPTH=                                    # variable to change how the hostname is displayed.

# See (ZSH Manual)[http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Login-information] for details.
# The default is set to %m which will show the hostname up to the first ‘.’ You can set it to %{N}m where N is an
# integer to show that many segments of system hostname. Setting N to a negative integer will show that many segments
# from the end of the hostname.

#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=""
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=""
#POWERLEVEL9K_CONTEXT_DEFAULT_ICON=""
#POWERLEVEL9K_CONTEXT_DEFAULT_ICON_COLOR=""
#POWERLEVEL9K_CONTEXT_DEFAULT_BOLD=true

#POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=""
#POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=""
#POWERLEVEL9K_CONTEXT_ROOT_ICON=""
#POWERLEVEL9K_CONTEXT_ROOT_ICON_COLOR=""
#POWERLEVEL9K_CONTEXT_ROOT_BOLD=true

# *****  date  *****
# Show system date.

#POWERLEVEL9K_DATE_FORMAT="%D{%d.%m.%y}"                             # Default date format
#POWERLEVEL9K_DATE_FORMAT="%D{%m/%d/%y}"                             # American date format
POWERLEVEL9K_DATE_FORMAT="%D{%d-%m-%y}"

POWERLEVEL9K_DATE_BACKGROUND="20"
POWERLEVEL9K_DATE_FOREGROUND="250"
POWERLEVEL9K_DATE_ICON="\uF073"                                      # F073 
POWERLEVEL9K_DATE_ICON_COLOR="255"
#POWERLEVEL9K_DATE_BOLD=true

# *****  dir  *****
# The dir segment shows the current working directory. When using the "Awesome Powerline" fonts, there are additional
# glyphs, as well
POWERLEVEL9K_DIR_SHORTEN_LENGTH=2                                    # If your shorten strategy, below, is entire directories, this field determines how many directories to leave at the end. If your shorten strategy is by character count, this field determines how many characters to allow per directory string.

#
#     Strategy Name                  Description
#     -------------                  -----------
#     Default                        Truncate whole directories from left. How many is defined by
#                                    POWERLEVEL9K_DIR_SHORTEN_LENGTH
#     truncate_middle                Truncates the middle part of a folder. E.g. you are in a folder named
#                                    "/MySuperProjects/AwesomeFiles/BoringOffice", then it will truncated to
#                                    "/MyS..cts/Awe..les/BoringOffice", if POWERLEVEL9K_DIR_SHORTEN_LENGTH=3 is also
#                                    set (controls the amount of characters to be left).
#     truncate_from_right            Just leaves the beginning of a folder name untouched. E.g. your folders will be
#                                    truncated like so: "/ro../Pr../office". How many characters will be untouched is
#                                    controlled by POWERLEVEL9K_DIR_SHORTEN_LENGTH.
#     truncate_from_left             Just leaves the end of a folder name untouched. E.g. your folders will be
#                                    truncated like so: "/..ot/..ct/office". How many characters will be untouched is
#                                    controlled by POWERLEVEL9K_DIR_SHORTEN_LENGTH.
#     truncate_to_last               Only display the folder that we are currently in.
#     truncate_to_first_and_last     Truncate middle directories from the path. How many directories will be
#                                    untouched is controlled by POWERLEVEL9K_SHORTER_DIR_LENGTH
#     truncate_absolute              Only display the last characters of the path. How many characters will be
#                                    untouched is controlled by POWERLEVEL9K_SHORTER_DIR_LENGTH
#     truncate_to_unique             For each parent path component, find the shortest unique beginning character
#                                    sequence.
#     truncate_with_folder_marker    Search for a file that is specified by POWERLEVEL9K_DIR_SHORTEN_FOLDER_MARKER and
#                                    truncate everything before that (if found, otherwise stop on $HOME and ROOT).
#     truncate_with_package_name     Search for a package.json or composer.json and prints the name field to
#                                    abbreviate the directory path. The precedence and/or files could be set by
#                                    POWERLEVEL9K_DIR_PACKAGE_FILES=(package.json composer.json). Please note that
#                                    this currently looks for .git directory to determine the root of the project.
#

POWERLEVEL9K_DIR_SHORTEN_STRATEGY="truncate_to_unique"               # How the directory strings should be truncated. See the table above for more information.
#POWERLEVEL9K_DIR_SHORTEN_DELIMITER=".."                             # Delimiter to use in truncated strings. This can be any string you choose, including an empty string if you wish to have no delimiter.
#POWERLEVEL9K_DIR_SHORTEN_FOLDER_MARKER='.shorten_folder_marker'     # Filename to use to indicate where to shorten the path when using "truncate_with_folder_marker".
#POWERLEVEL9K_DIR_SHORTEN_DELIMITER="\u2026"                         # …
POWERLEVEL9K_DIR_SHORTEN_DELIMITER="…"                               # …

POWERLEVEL9K_DIR_HOME_FOLDER_ABBREVIATION="~"

#POWERLEVEL9K_DIR_PATH_ABSOLUTE=true                                 # uncomment this if you want to use absolute paths instead of home folder abbreviations.
#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true                          # omit the first character (usually a slash that gets replaced if you set POWERLEVEL9K_DIR_PATH_SEPARATOR)

# Unfortunately, you cannot use $(printIcon "") here as it fails.
# Unicode \uXXXX codes are printed literally as XXX.
#POWERLEVEL9K_DIR_PATH_SEPARATOR=$(echo -n " \uE0B1 ")               # customize the directory separator E0B1 
#POWERLEVEL9K_DIR_PATH_SEPARATOR="  "

POWERLEVEL9K_DIR_SHOW_WRITABLE=true

#TODO
#POWERLEVEL9K_DIR_HYPERLINK=true

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="27"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="252"
POWERLEVEL9K_DIR_DEFAULT_ICON="\uF115"                               # E5FF  / F07B  / F115 
POWERLEVEL9K_DIR_DEFAULT_ICON_COLOR="255"
#POWERLEVEL9K_DIR_DEFAULT_BOLD=true

POWERLEVEL9K_DIR_HOME_BACKGROUND="27"
POWERLEVEL9K_DIR_HOME_FOREGROUND="252"
POWERLEVEL9K_DIR_HOME_ICON="\uF46D"                                  # F015  / F46D 
POWERLEVEL9K_DIR_HOME_ICON_COLOR="255"
#POWERLEVEL9K_DIR_HOME_BOLD=true

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="27"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="252"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_ICON="\uF114"                        # E5FE  / F07C  / F114 
POWERLEVEL9K_DIR_HOME_SUBFOLDER_ICON_COLOR="255"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BOLD=true

POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND="124"
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND="252"
#POWERLEVEL9K_DIR_NOT_WRITABLE_ICON=""
POWERLEVEL9K_DIR_NOT_WRITABLE_ICON_COLOR="255"
#POWERLEVEL9K_DIR_NOT_WRITABLE_BOLD=true

POWERLEVEL9K_DIR_ETC_BACKGROUND="55"
POWERLEVEL9K_DIR_ETC_FOREGROUND="252"
#POWERLEVEL9K_DIR_ETC_ICON=""
POWERLEVEL9K_DIR_ETC_ICON_COLOR="255"
#POWERLEVEL9K_DIR_ETC_BOLD=true

POWERLEVEL9K_DIR_PATH_HIGHLIGHT_FOREGROUND="226"
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true

POWERLEVEL9K_DIR_PATH_SEPARATOR_FOREGROUND="226"

# *****  dir_writeable  *****
# Displays a lock icon, if you do not have write permissions on the current folder.

#POWERLEVEL9K_DIR_WRITEABLE_BACKGROUND=""
#POWERLEVEL9K_DIR_WRITEABLE_FOREGROUND=""
POWERLEVEL9K_DIR_WRITEABLE_ICON="\uF023"                             # F023 
#POWERLEVEL9K_DIR_WRITEABLE_ICON_COLOR=""
#POWERLEVEL9K_DIR_WRITEABLE_BOLD=true

# *****  disk_usage  *****
# The disk_usage segment will show the usage level of the partition that your current working directory resides in.

#POWERLEVEL9K_DISK_USAGE_ONLY_WARNING=false                          # Hide the segment except when usage levels have hit warning or critical levels.
#POWERLEVEL9K_DISK_USAGE_WARNING_LEVEL=90                            # The usage level that triggers a warning state.
#POWERLEVEL9K_DISK_USAGE_CRITICAL_LEVEL=95                           # The usage level that triggers a critical state.

#POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=""
#POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND=""
POWERLEVEL9K_DISK_USAGE_NORMAL_ICON="\uF0A0"                         # F0A0 
#POWERLEVEL9K_DISK_USAGE_NORMAL_ICON_COLOR=""
#POWERLEVEL9K_DISK_USAGE_NORMAL_BOLD=true

#POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=""
#POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND=""
POWERLEVEL9K_DISK_USAGE_WARNING_ICON="\uF0A0"                        # F0A0 
#POWERLEVEL9K_DISK_USAGE_WARNING_ICON_COLOR=""
#POWERLEVEL9K_DISK_USAGE_WARNING_BOLD=true

#POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=""
#POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND=""
POWERLEVEL9K_DISK_USAGE_CRITICAL_ICON="\uF0A0"                       # F0A0 
#POWERLEVEL9K_DISK_USAGE_CRITICAL_ICON_COLOR=""
#POWERLEVEL9K_DISK_USAGE_CRITICAL_BOLD=true

# *****  history  *****
# The command number for the current line.

POWERLEVEL9K_HISTORY_BACKGROUND="18"
POWERLEVEL9K_HISTORY_FOREGROUND="250"
POWERLEVEL9K_HISTORY_ICON="\uF464"                                   # E29A  / F16C  / F1DC  / F464 
POWERLEVEL9K_HISTORY_ICON_COLOR="255"
#POWERLEVEL9K_HISTORY_BOLD=true

# *****  host  *****
# This segment displays the current host.

POWERLEVEL9K_HOST_LOCAL_BACKGROUND="22"
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="250"
POWERLEVEL9K_HOST_LOCAL_ICON="\uF26C"                                # F108  / F109  / F26C  / F67C 
POWERLEVEL9K_HOST_LOCAL_ICON_COLOR="255"
POWERLEVEL9K_HOST_LOCAL_BOLD=true

POWERLEVEL9K_HOST_REMOTE_BACKGROUND="52"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="250"
#POWERLEVEL9K_HOST_REMOTE_ICON=""
POWERLEVEL9K_HOST_REMOTE_ICON_COLOR="255"
POWERLEVEL9K_HOST_REMOTE_BOLD=true

# *****  ip  *****
# This segment tries to examine all currently used network interfaces and prints the first address it finds.

#POWERLEVEL9K_IP_INTERFACE="None"                                    # The NIC for which you wish to display the IP address. Example: eth0.

#POWERLEVEL9K_IP_BACKGROUND=""
#POWERLEVEL9K_IP_FOREGROUND=""
POWERLEVEL9K_IP_ICON="\uF424"                                        # F1EB  / F424 
#POWERLEVEL9K_IP_ICON_COLOR=""
#POWERLEVEL9K_IP_BOLD=true

# *****  load  *****
# Your machine's load averages.

#POWERLEVEL9K_LOAD_DEFAULT_BACKGROUND=""
#POWERLEVEL9K_LOAD_DEFAULT_FOREGROUND=""
POWERLEVEL9K_LOAD_DEFAULT_ICON="\uF463 "                             # E234  / F080  / F1FE  / F463 
#POWERLEVEL9K_LOAD_DEFAULT_ICON_COLOR=""
#POWERLEVEL9K_LOAD_DEFAULT_BOLD=true

#POWERLEVEL9K_LOAD_WARNING_BACKGROUND=""
#POWERLEVEL9K_LOAD_WARNING_FOREGROUND=""
POWERLEVEL9K_LOAD_WARNING_ICON="\uF463 "                             # E234  / F080  / F1FE  / F463 
#POWERLEVEL9K_LOAD_WARNING_ICON_COLOR=""
#POWERLEVEL9K_LOAD_WARNING_BOLD=true

#POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND=""
#POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=""
POWERLEVEL9K_LOAD_CRITICAL_ICON="\uF463 "                            # E234  / F080  / F1FE  / F463 
#POWERLEVEL9K_LOAD_CRITICAL_ICON_COLOR=""
#POWERLEVEL9K_LOAD_CRITICAL_BOLD=true

# *****  os_icon  *****
# Display a nice little icon, depending on your operating system.

POWERLEVEL9K_OS_ICON_BACKGROUND="54"
POWERLEVEL9K_OS_ICON_FOREGROUND="16"
#POWERLEVEL9K_OS_ICON_ICON=""
POWERLEVEL9K_OS_ICON_ICON_COLOR="252"
#POWERLEVEL9K_OS_ICON_BOLD=true

# *****  public_ip  *****
# This segment will display your public IP address. There are several methods of obtaining this information and by
# default it will try all of them starting with the most efficient. You can also specify which method you would like
# it to use. The methods available are dig using opendns, curl, or wget. The host used for wget and curl is
# http://ident.me by default but can be set to another host if you prefer.

#POWERLEVEL9K_PUBLIC_IP_FILE="/tmp/p8k_public_ip"                    # This is the file your public IP is cached in.
#POWERLEVEL9K_PUBLIC_IP_HOST="http://ident.me"                       # This is the default host to get your public IP.
#POWERLEVEL9K_PUBLIC_IP_TIMEOUT=300                                  # The amount of time in seconds between refreshing your cached IP.
#POWERLEVEL9K_PUBLIC_IP_METHODS=(dig curl wget)                      # These methods in that order are used to refresh your IP.
#POWERLEVEL9K_PUBLIC_IP_NONE="None"                                  # The string displayed when an IP was not obtained

# Set the following variable to the VPN interface for this to work
POWERLEVEL9K_PUBLIC_IP_VPN_INTERFACE="ppp0"

#POWERLEVEL9K_PUBLIC_IP_BACKGROUND=""
#POWERLEVEL9K_PUBLIC_IP_FOREGROUND=""
POWERLEVEL9K_PUBLIC_IP_ICON="\uF0AC"                                 # F0AC 
#POWERLEVEL9K_PUBLIC_IP_ICON_COLOR=""
#POWERLEVEL9K_PUBLIC_IP_BOLD=true

# *****  ram  *****
# Show free RAM.

POWERLEVEL9K_RAM_ELEMENTS="Both"                                     # Specify ram_free or swap_used to only show one or the other rather than both.

#POWERLEVEL9K_RAM_BACKGROUND=""
#POWERLEVEL9K_RAM_FOREGROUND=""
POWERLEVEL9K_RAM_ICON="\uF2DB"                                       # F2DB 
#POWERLEVEL9K_RAM_ICON_COLOR=""
#POWERLEVEL9K_RAM_BOLD=true

# *****  root_indicator  *****
# An indicator if the user has superuser status.

# *****  ssh  *****
# Indicates whether or not you are in an SSH session.

#POWERLEVEL9K_SSH_BACKGROUND=""
#POWERLEVEL9K_SSH_FOREGROUND=""
POWERLEVEL9K_SSH_ICON="\uF489"                                       # 
#POWERLEVEL9K_SSH_ICON_COLOR=""
#POWERLEVEL9K_SSH_BOLD=true

# *****  status  *****
# This segment shows the return code of the last command.

#POWERLEVEL9K_STATUS_CROSS=true                                      # uncomment this line to use a cross instead of a carriage return note that this hides the error code and pipestatus
#POWERLEVEL9K_STATUS_OK=false                                        # uncomment this line to hide status segment when ok
#POWERLEVEL9K_STATUS_SHOW_PIPESTATUS=false                           # uncomment this line to hide pipe status results
#POWERLEVEL9K_STATUS_VERBOSE=false                                   # uncomment this line to hide this segment when the last command completed successfully by setting POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE to false.
#POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true                          # uncomment this line to show this segment when the last command completed successfully in non-verbose mode.

POWERLEVEL9K_STATUS_OK_BACKGROUND="236"                              # (note: only, if verbose is true)
POWERLEVEL9K_STATUS_OK_FOREGROUND="250"                              # (note: only, if verbose is true)
POWERLEVEL9K_STATUS_OK_ICON="\uF42E"                                 # F00C  / F42E  (note: only, if verbose is true)
POWERLEVEL9K_STATUS_OK_ICON_COLOR="28"                               # (note: only, if verbose is true)
#POWERLEVEL9K_STATUS_OK_BOLD=true

POWERLEVEL9K_STATUS_ERROR_BACKGROUND="236"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="250"
POWERLEVEL9K_STATUS_ERROR_ICON="\uF467"                              # F00D  / F467 
POWERLEVEL9K_STATUS_ERROR_ICON_COLOR="160"
#POWERLEVEL9K_STATUS_ERROR_BOLD=true

POWERLEVEL9K_STATUS_ERROR_CR_BACKGROUND="236"
POWERLEVEL9K_STATUS_ERROR_CR_FOREGROUND="250"
POWERLEVEL9K_STATUS_ERROR_CR_ICON="\u21B5"                           # 21B5 ↵
POWERLEVEL9K_STATUS_ERROR_CR_ICON_COLOR="160"
#POWERLEVEL9K_STATUS_ERROR_CR_BOLD=true

# *****  swap  *****
# Prints the current swap size.

#POWERLEVEL9K_SWAP_BACKGROUND=""
#POWERLEVEL9K_SWAP_FOREGROUND=""
POWERLEVEL9K_SWAP_ICON="\uF705"                                      # E705  / E706  / F464 
#POWERLEVEL9K_SWAP_ICON_COLOR=""
#POWERLEVEL9K_SWAP_BOLD=true

# *****  time  *****
# Show system time.

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"                              # ZSH time format to use in this segment.
#POWERLEVEL9K_TIME_FORMAT="%D{%S:%M:%H}"                             # Reversed time format
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uf073  %d.%m.%y}"            # Output time, date, and a symbol  from the "Awesome Powerline Font" set

POWERLEVEL9K_TIME_BACKGROUND="21"
POWERLEVEL9K_TIME_FOREGROUND="250"
POWERLEVEL9K_TIME_ICON="\uF43A"                                      # F43A 
POWERLEVEL9K_TIME_ICON_COLOR="255"
#POWERLEVEL9K_TIME_BOLD=true

# *****  todo  *****
POWERLEVEL9K_TODO_BACKGROUND="19"
POWERLEVEL9K_TODO_FOREGROUND="250"
POWERLEVEL9K_TODO_ICON="\uF046"                                      # F133  / F046 
POWERLEVEL9K_TODO_ICON_COLOR="255"
POWERLEVEL9K_TODO_BOLD=true

# *****  tw *****
# This segment displays the task warrior tasks due.
# enable this if you want a compact message displayed - 0p 0t 0o
POWERLEVEL9K_TW_COMPACT=true

POWERLEVEL9K_TW_FINISHEDALL_BACKGROUND="22"
POWERLEVEL9K_TW_FINISHEDALL_FOREGROUND="250"
POWERLEVEL9K_TW_FINISHEDALL_ICON="\uF046"
POWERLEVEL9K_TW_FINISHEDALL_ICON_COLOR="255"
#POWERLEVEL9K_TW_FINISHEDALL_BOLD=true

POWERLEVEL9K_TW_FINISHEDTODAY_BACKGROUND="24"
POWERLEVEL9K_TW_FINISHEDTODAY_FOREGROUND="250"
POWERLEVEL9K_TW_FINISHEDTODAY_ICON="\uF046"
POWERLEVEL9K_TW_FINISHEDTODAY_ICON_COLOR="255"
#POWERLEVEL9K_TW_FINISHEDTODAY_BOLD=true

POWERLEVEL9K_TW_TODAYPENDING_BACKGROUND="130"
POWERLEVEL9K_TW_TODAYPENDING_FOREGROUND="250"
POWERLEVEL9K_TW_TODAYPENDING_ICON="\uF046"
POWERLEVEL9K_TW_TODAYPENDING_ICON_COLOR="255"
#POWERLEVEL9K_TW_TODAYPENDING_BOLD=true

POWERLEVEL9K_TW_TODAYONLY_BACKGROUND="166"
POWERLEVEL9K_TW_TODAYONLY_FOREGROUND="250"
POWERLEVEL9K_TW_TODAYONLY_ICON="\uF046"
POWERLEVEL9K_TW_TODAYONLY_ICON_COLOR="255"
#POWERLEVEL9K_TW_TODAYONLY_BOLD=true

POWERLEVEL9K_TW_LATE_BACKGROUND="88"
POWERLEVEL9K_TW_LATE_FOREGROUND="250"
POWERLEVEL9K_TW_LATE_ICON="\uF046"
POWERLEVEL9K_TW_LATE_ICON_COLOR="255"
#POWERLEVEL9K_TW_LATE_BOLD=true

# *****  user  *****
# This segment displays the current user.

POWERLEVEL9K_USER_ALWAYS_SHOW=true
#POWERLEVEL9K_USER_ALWAYS_SHOW_USER=true
#POWERLEVEL9K_USER_TEMPLATE="%n"

POWERLEVEL9K_USER_DEFAULT_BACKGROUND="21"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="250"
POWERLEVEL9K_USER_DEFAULT_ICON="\uF2C0"                              # F007  / F2C0 
POWERLEVEL9K_USER_DEFAULT_ICON_COLOR="255"
POWERLEVEL9K_USER_DEFAULT_BOLD=true

POWERLEVEL9K_USER_ROOT_BACKGROUND="124"
POWERLEVEL9K_USER_ROOT_FOREGROUND="250"
POWERLEVEL9K_USER_ROOT_ICON="\uF292"                                # E614  / F198  / F292 
POWERLEVEL9K_USER_ROOT_ICON_COLOR="255"
POWERLEVEL9K_USER_ROOT_BOLD=true

POWERLEVEL9K_USER_SUDO_BACKGROUND="166"
POWERLEVEL9K_USER_SUDO_FOREGROUND="250"
POWERLEVEL9K_USER_SUDO_ICON="\uF13E"                                 # F09C  / F13E 
POWERLEVEL9K_USER_SUDO_ICON_COLOR="255"
POWERLEVEL9K_USER_SUDO_BOLD=true

POWERLEVEL9K_USER_REMOTE_BACKGROUND="21"
POWERLEVEL9K_USER_REMOTE_FOREGROUND="250"
POWERLEVEL9K_USER_REMOTE_ICON="\uF2C0"                              # F007  / F2C0 
POWERLEVEL9K_USER_REMOTE_ICON_COLOR="255"
POWERLEVEL9K_USER_REMOTE_BOLD=true

POWERLEVEL9K_USER_REMOTESUDO_BACKGROUND="166"
POWERLEVEL9K_USER_REMOTESUDO_FOREGROUND="250"
POWERLEVEL9K_USER_REMOTESUDO_ICON="\uF13E"                                 # F09C  / F13E  /
POWERLEVEL9K_USER_REMOTESUDO_ICON_COLOR="255"
POWERLEVEL9K_USER_REMOTESUDO_BOLD=true

# *****  vi_mode  *****
# This segment shows ZSH"s current input mode. Note that this is only useful if you are using the ZSH Line Editor (VI
# mode). You can enable this either by .zshrc configuration or using a plugin, like Oh-My-Zsh"s vi-mode plugin.
# Visual mode only works if the user has installed [zsh-vimode-visual](https://github.com/b4b4r07/zsh-vimode-visual)

POWERLEVEL9K_VI_MODE_INSERT_STRING=""
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="250"
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="24"
POWERLEVEL9K_VI_MODE_INSERT_ICON="\uF090"                            # F090  / E795  / F489 
#POWERLEVEL9K_VI_MODE_INSERT_ICON_COLOR=""

POWERLEVEL9K_VI_MODE_NORMAL_STRING=""
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND="106"
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND="22"
POWERLEVEL9K_VI_MODE_NORMAL_ICON="\uF120"                            # E7A2  / F120 
#POWERLEVEL9K_VI_MODE_NORMAL_ICON_COLOR=""

POWERLEVEL9K_VI_MODE_VISUAL_STRING=""
POWERLEVEL9K_VI_MODE_VISUAL_BACKGROUND="214"
POWERLEVEL9K_VI_MODE_VISUAL_FOREGROUND="94"
POWERLEVEL9K_VI_MODE_VISUAL_ICON="\uF489"                            # F489 
#POWERLEVEL9K_VI_MODE_VISUAL_ICON_COLOR=""

# *****  vpn_ip  *****
# Set the following variable to the VPN interface for this to work
POWERLEVEL9K_VPN_IP_INTERFACE="ppp0"

#POWERLEVEL9K_VPN_IP_BACKGROUND=""
#POWERLEVEL9K_VPN_IP_FOREGROUND=""
#POWERLEVEL9K_VPN_IP_ICON=""
#POWERLEVEL9K_VPN_IP_ICON_COLOR=""
#POWERLEVEL9K_VPN_IP_BOLD=true

#=======================================
# DEVELOPMENT ENVIRONMENT SEGMENTS
#=======================================

# *****  vcs  *****
# By default, the vcs segment will provide quite a bit of information.
#POWERLEVEL9K_VCS_HIDE_BRANCH_ICON=true                              # set to hide the branch icon from the segment.
#POWERLEVEL9K_VCS_SHOW_CHANGESET=true                                # set to display the hash/changeset in the segment.
#POWERLEVEL9K_VCS_CHANGESET_HASH_LENGTH=6                            # How many characters of the hash/changeset to display in the segment.
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=true                           # set to reflect submodule status in the top-level repository prompt.
#POWERLEVEL9K_VCS_HIDE_TAGS=false                                    # set to stop tags being displayed in the segment.

# *****  vcs symbols  *****
# The vcs segment uses various symbols to tell you the state of your repository. These symbols depend on your
# installed font and selected POWERLEVEL9K_MODE from the Installation section above.

#
#    Compatible  Powerline   Awesome            Explanation
#    ↑4          ↑4          4 (\uf01b)        Number of commits your repository is ahead of your remote branch
#    ↓5          ↓5          5 (\uf01a)        Number of commits your repository is behind of your remote branch
#    ⍟3          ⍟3          3 (\uf48d)        Number of stashes, here 3.
#    ●           ●            (\uf06a)         There are unstaged changes in your working copy
#    ✚           ✚           (\uf055)         There are staged changes in your working copy
#    ?           ?            (\uf059)         There are files in your working copy unknown to your repository
#    →          →           (\uf403)         The name of your branch differs from its tracking branch.
#    ☿          ☿            (\uf462)          A mercurial bookmark is active.
#    @            (\ue0a0)   (\uf418)         Branch Icon
#    None        None        2c3705 (\uf417)   The current commit hash. Here "2c3705"
#    None        None         (\uf406)         Repository is a git repository
#    None        None         (\uf0c3)         Repository is a Mercurial repository
#

# The VCS segment differs from other segments at the moment as some of the
# icons are defined at runtime.

# VCS color definitions

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='28'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='250'
POWERLEVEL9K_VCS_CLEAN_ICON_COLOR="255"

POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='208'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='250'
POWERLEVEL9K_VCS_UNTRACKED_ICON_COLOR="255"

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='124'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='250'
POWERLEVEL9K_VCS_MODIFIED_ICON_COLOR="255"

# VCS icon definitions

POWERLEVEL9K_VCS_GIT_ICON="\uF406 "                                  # F406 
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON="\uF171 "                        # F171 
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uF408 "                           # F408 
POWERLEVEL9K_VCS_GIT_GITLAB_ICON="\uF296 "                           # F296 

POWERLEVEL9K_VCS_HG_ICON="\uF0C3 "                                   # F0C3 
POWERLEVEL9K_VCS_SVN_ICON="\uE72D "                                  # E72D 

POWERLEVEL9K_VCS_BOOKMARK_ICON="\uF461 "                             # F461 
POWERLEVEL9K_VCS_BRANCH_ICON="\uF418 "                               # F418 
POWERLEVEL9K_VCS_COMMIT_ICON="\uF417 "                               # F417 
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON="\uF01A "                     # F01A 
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON="\uF01B "                     # F01B 
POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON="\uF47F "                        # F47F 
POWERLEVEL9K_VCS_STAGED_ICON="\uF055"                                # F055 
POWERLEVEL9K_VCS_STASH_ICON="\uF48D "                                # F48D 
POWERLEVEL9K_VCS_TAG_ICON="\uF02B "                                  # F02B 
POWERLEVEL9K_VCS_UNSTAGED_ICON="\uF06A"                              # F06A 
POWERLEVEL9K_VCS_UNTRACKED_ICON="\uF059"                             # F059 

#=======================================
# LANGUAGE SEGMENTS
#=======================================

#---------------------------------------
# GoLang Segments
#---------------------------------------

# *****  go_version  *****
# Show the current GO version

#POWERLEVEL9K_GO_VERSION_BACKGROUND=""
#POWERLEVEL9K_GO_VERSION_FOREGROUND=""
POWERLEVEL9K_GO_VERSION_ICON="\uE626"                                # E626 
#POWERLEVEL9K_GO_VERSION_ICON_COLOR=""
#POWERLEVEL9K_GO_VERSION_BOLD=true

#---------------------------------------
# Javascript / Node.js Segments
#---------------------------------------

# *****  node_version  *****
# Show the version number of the installed Node.js

# *****  node_env  *****
# Prompt for displaying node version and environment name.
# See: https://github.com/ekalinin/nodeenv

#POWERLEVEL9K_NODE_ENV_BACKGROUND=""
#POWERLEVEL9K_NODE_ENV_FOREGROUND=""
POWERLEVEL9K_NODE_ENV_ICON="\uE617 "                                 # E617 
#POWERLEVEL9K_NODE_ENV_ICON_COLOR=""
#POWERLEVEL9K_NODE_ENV_BOLD=true

#POWERLEVEL9K_NODE_VERSION_BACKGROUND=""
#POWERLEVEL9K_NODE_VERSION_FOREGROUND=""
POWERLEVEL9K_NODE_VERSION_ICON="\uE617 "                             # E617 
#POWERLEVEL9K_NODE_VERSION_ICON_COLOR=""
#POWERLEVEL9K_NODE_VERSION_BOLD=true

# *****  nvm  *****
# Show the version of Node that is currently active, if it differs from the version used by NVM.

#---------------------------------------
# PHP Segments
#---------------------------------------

# *****  php_version  *****
# Show the current PHP version.

# *****  symfony_tests  *****
# The symfony_tests segment shows a ratio of "real" classes vs test classes in your source code. This is just a very
# simple ratio, and does not show your code coverage or any sophisticated stats. All this does is count your source
# files and test files, and calculate the ratio between them. Just enough to give you a quick overview about the test
# situation of the project you are dealing with.

# *****  symfony_version  *****
# Show the current symfony version, if you are in a symfony-Project dir.

#POWERLEVEL9K_SYMFONY2_VERSION_BACKGROUND=""
#POWERLEVEL9K_SYMFONY2_VERSION_FOREGROUND=""
POWERLEVEL9K_SYMFONY2_VERSION_ICON="\uE757"                          # E757 
#POWERLEVEL9K_SYMFONY2_VERSION_ICON_COLOR=""
#POWERLEVEL9K_SYMFONY2_VERSION_BOLD=true

#---------------------------------------
# Python Segments
#---------------------------------------

# *****  anaconda  *****
# This segment shows your active anaconda environment. It relies on either the CONDA_ENV_PATH or the CONDA_PREFIX
# (depending on the conda version) environment variable to be set which happens when you properly source activate
# an environment.

#POWERLEVEL9K_ANACONDA_LEFT_DELIMITER="("
#POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=")"

#POWERLEVEL9K_ANACONDA_BACKGROUND=""
#POWERLEVEL9K_ANACONDA_FOREGROUND=""                                 # Note that you can modify the _FOREGROUND color without affecting the icon color.
#POWERLEVEL9K_ANACONDA_ICON=""
#POWERLEVEL9K_ANACONDA_ICON_COLOR=""
#POWERLEVEL9K_ANACONDA_BOLD=true

# *****  pyenv  *****
# Your active python version as reported by the first word of pyenv version. Note that the segment is not displayed if
# that word is system i.e. the segment is inactive if you are using system python.

#POWERLEVEL9K_PYENV_BACKGROUND=""
#POWERLEVEL9K_PYENV_FOREGROUND=""
POWERLEVEL9K_PYENV_ICON="\uE235"                                     # E235 
#POWERLEVEL9K_PYENV_ICON_COLOR=""
#POWERLEVEL9K_PYENV_BOLD=true

# *****  virtualenv  *****
# Your Python VirtualEnv.
# See: https://virtualenv.pypa.io/en/latest/

#---------------------------------------
# Ruby Segments
#---------------------------------------

# *****  chruby  *****
# Ruby environment information using chruby (if one is active).

# *****  rbenv  *****
# This segment shows the version of Ruby being used when using rbenv to change your current Ruby stack. It figures out
# the version being used by taking the output of the rbenv version-name command. If rbenv is not in $PATH, nothing
# will be shown. If the current Ruby version is the same as the global Ruby version, nothing will be shown.

#POWERLEVEL9K_RBENV_BACKGROUND=""
#POWERLEVEL9K_RBENV_FOREGROUND=""
POWERLEVEL9K_RBENV_ICON="\uF219 "                                    # F219 
#POWERLEVEL9K_RBENV_ICON_COLOR=""
#POWERLEVEL9K_RBENV_BOLD=true

# *****  rspec_stats  *****
# The rspec_stats segment shows a ratio of "real" classes vs test classes in your source code. This is just a very
# simple ratio, and does not show your code coverage or any sophisticated stats. All this does is count your source
# files and test files, and calculate the ratio between them. Just enough to give you a quick overview about the test
# situation of the project you are dealing with.

#---------------------------------------
# Rust Segments
#---------------------------------------

# *****  rust_version  *****
# Display the current rust version and logo.  (\uE7A8)

#POWERLEVEL9K_RUST_VERSION_BACKGROUND=""                             # E757 
#POWERLEVEL9K_RUST_VERSION_FOREGROUND=""                             # E757 
POWERLEVEL9K_RUST_VERSION_ICON="\uE7A8"                              # E7A8 
#POWERLEVEL9K_RUST_VERSION_ICON_COLOR=""                             # E757 
#POWERLEVEL9K_RUST_VERSION_BOLD=true

#---------------------------------------
# Swift Segments
#---------------------------------------

# *****  swift_version  *****
# Show the version number of the installed Swift.

#POWERLEVEL9K_SWIFT_VERSION_BACKGROUND=""                            # E757 
#POWERLEVEL9K_SWIFT_VERSION_FOREGROUND=""                            # E757 
POWERLEVEL9K_SWIFT_VERSION_ICON="\uE755"                             # E755 
#POWERLEVEL9K_SWIFT_VERSION_ICON_COLOR=""                            # E755 
#POWERLEVEL9K_SWIFT_VERSION_BOLD=true

#=======================================
# CLOUD SEGMENTS
#=======================================

#---------------------------------------
# AWS Segments
#---------------------------------------

# *****  aws  *****
# If you would like to display the current AWS profile, add the aws segment to one of the prompts, and define
# POWERLEVEL9K_AWS_DEFAULT_PROFILE in your ~/.zshrc

#POWERLEVEL9K_AWS_DEFAULT_PROFILE=""                                 # your AWS profile name

#POWERLEVEL9K_AWS_BACKGROUND=""
#POWERLEVEL9K_AWS_FOREGROUND=""
POWERLEVEL9K_AWS_ICON="\uF270"                                       # F270 
#POWERLEVEL9K_AWS_ICON_COLOR=""
#POWERLEVEL9K_AWS_BOLD=true

# *****  aws_eb_env  *****
# The current Elastic Beanstalk Environment.

#POWERLEVEL9K_AWS_EB_ENV_BACKGROUND=""
#POWERLEVEL9K_AWS_EB_ENV_FOREGROUND=""
POWERLEVEL9K_AWS_EB_ENV_ICON="\uF1BD  "                              # F1BD 
#POWERLEVEL9K_AWS_EB_ENV_ICON_COLOR=""
#POWERLEVEL9K_AWS_EB_ENV_BOLD=true

#---------------------------------------
# Docker Segments
#---------------------------------------

# *****  docker_machine  *****
# The current Docker Machine.

#POWERLEVEL9K_DOCKER_MACHINE_BACKGROUND=""
#POWERLEVEL9K_DOCKER_MACHINE_FOREGROUND=""
POWERLEVEL9K_DOCKER_MACHINE_ICON="\uF0AE"                            # F0AE 
#POWERLEVEL9K_DOCKER_MACHINE_ICON_COLOR=""
#POWERLEVEL9K_DOCKER_MACHINE_BOLD=true

#=======================================
# OTHER SEGMENTS
#=======================================

# *****  command_execution_time  *****
# Display the time the previous command took to execute if the time is above
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD.
# The time is formatted to be "human readable", and so scales the units based on the length of execution time.
# If you want more precision, just set the POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION field.

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3                      # Threshold above which to print this segment. Can be set to 0 to always print.
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=2                      # Number of digits to use in the fractional part of the time value.

#POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=""
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=""
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_ICON=""
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_ICON_COLOR=""
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_BOLD=true

# *****  dropbox  *****
#POWERLEVEL9K_DROPBOX_BACKGROUND=""
#POWERLEVEL9K_DROPBOX_FOREGROUND=""
POWERLEVEL9K_DROPBOX_ICON="\uF16B"                                   # F16B 
#POWERLEVEL9K_DROPBOX_ICON_COLOR=""
#POWERLEVEL9K_DROPBOX_BOLD=true

# *****  kubecontext  *****
#POWERLEVEL9K_KUBECONTEXT_BACKGROUND=""
#POWERLEVEL9K_KUBECONTEXT_FOREGROUND=""
POWERLEVEL9K_KUBECONTEXT_ICON="\u2388"                               # 2388 ⎈
#POWERLEVEL9K_KUBECONTEXT_ICON_COLOR=""
#POWERLEVEL9K_KUBECONTEXT_BOLD=true

# *****  test_stats  *****
#POWERLEVEL9K_TEST_STATS_AVG_BACKGROUND=""
#POWERLEVEL9K_TEST_STATS_AVG_FOREGROUND=""
#POWERLEVEL9K_TEST_STATS_AVG_ICON=""
#POWERLEVEL9K_TEST_STATS_AVG_ICON_COLOR=""
#POWERLEVEL9K_TEST_STATS_AVG_BOLD=true

#POWERLEVEL9K_TEST_STATS_BAD_BACKGROUND=""
#POWERLEVEL9K_TEST_STATS_BAD_FOREGROUND=""
#POWERLEVEL9K_TEST_STATS_BAD_ICON=""
#POWERLEVEL9K_TEST_STATS_BAD_ICON_COLOR=""
#POWERLEVEL9K_TEST_STATS_BAD_BOLD=true

#POWERLEVEL9K_TEST_STATS_GOOD_BACKGROUND=""
#POWERLEVEL9K_TEST_STATS_GOOD_FOREGROUND=""
#POWERLEVEL9K_TEST_STATS_GOOD_ICON=""
#POWERLEVEL9K_TEST_STATS_GOOD_ICON_COLOR=""
#POWERLEVEL9K_TEST_STATS_GOOD_BOLD=true

#---------------------------------------
# My Custom Segments
#---------------------------------------
# *****  custom_command  *****
# The custom_... segment allows you to turn the output of a custom command into a prompt segment. As an example, if
# you wanted to create a custom segment to display your WiFi signal strength, you might define a custom segment called
# custom_wifi_signal like this:
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="echo signal: \$(nmcli device wifi | grep yes | awk "{print \$8}")"
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="blue"
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"

# If you prefer, you can also define the function in your .zshrc rather than putting it in-line with the variable
# export, as shown above. Just don"t forget to invoke your function from your segment! Example code that achieves the
# same result as the above:

#zsh_wifi_signal(){
#    local signal=$(nmcli device wifi | grep yes | awk "{print $8}")
#    local color="%F{yellow}"
#    [[ $signal -gt 75 ]] && color="%F{green}"
#    [[ $signal -lt 50 ]] && color="%F{red}"
#    echo -n "%{$color%}\uf230  $signal%{%f%}" # \uf230 is 
#}
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"

POWERLEVEL9K_NEW_BACKGROUND="54"
#POWERLEVEL9K_NEW_FOREGROUND=""
POWERLEVEL9K_NEW_ICON="\uF422"                                       # F422 
#POWERLEVEL9K_NEW_ICON_COLOR=""

P9K_IGNORE_VAR_WARNING=true

#=======================================
# PROMPT CUSTOMIZATION
#=======================================
# Choose which segments to display in your prompt

# Segment list for left prompt
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# Segment list for right prompt
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# You can also use different prompts in different environments, e.g. for TMUX, you might use
#if [[ "${TERM}" =~ "tmux" || "${TERM}" =~ "screen" ]]; then
#  # Segment list for left prompt
#  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable dir background_jobs command_execution_time vi_mode)
#  # Segment list for right prompt
#  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo)
#else
#  # Segment list for left prompt
#  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir_writable dir background_jobs command_execution_time vi_mode)
#  # Segment list for right prompt
#  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo date time battery)
#fi
if [[ "${TERM}" =~ "tmux" || "${TERM}" =~ "screen" ]]; then
  # Segment list for left prompt
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir background_jobs command_execution_time vi_mode)
  # Segment list for right prompt
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv pyenv history tw)
else
  # Segment list for left prompt
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon host user dir background_jobs command_execution_time vi_mode)
  # Segment list for right prompt
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv pyenv history tw date time battery)
fi

#=======================================
# LOADING POWERLEVEL9K
#=======================================

# Option 1: Install for Vanilla ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
# source $HOME/powerlevel9k/powerlevel9k.zsh-theme
source $HOME/code/powerlevel9k/powerlevel9k.zsh-theme

# Option 2: Install for Oh-My-ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Option 3: Install for Prezto
# $ git clone https://github.com/bhilburn/powerlevel9k.git  ~/.zprezto/modules/prompt/external/powerlevel9k
# $ ln -s ~/.zprezto/modules/prompt/external/powerlevel9k/powerlevel9k.zsh-theme ~/.zprezto/modules/prompt/functions/prompt_POWERLEVEL9K_setup
# Add to ~/.zpreztorc :
# zstyle ':prezto:module:prompt' theme 'powerlevel9k'

# Option 4: Install for antigen
# antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen apply

# Option 5: Install for Zplug
# $ zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Option 6: Install for Zgen
# zgen load bhilburn/powerlevel9k powerlevel9k

# Option 7: Install for Antibody
# antibody bundle bhilburn/powerlevel9k

# Option 8: Install for ZPM
# Plug bhilburn/powerlevel9k
# source ~/.local/share/zpm/plugins/powerlevel9k/powerlevel9k.zsh-theme

# Option 9: Install for ZIM
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.zim/modules/prompt/external-themes/powerlevel9k
# $ ln -s ~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme ~/.zim/modules/prompt/functions/prompt_POWERLEVEL9K_setup
# Add to ~/.zimrc
# zprompt_theme='powerlevel9k'
