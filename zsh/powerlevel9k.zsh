#!usr/bin/env zsh
# vim:ft=zsh ts=4 sw=4 noet fenc=utf-8
###########################################################################
# @title POWERLEVEL9K Sample configuration file
#
# @source https://github.com/bhilburn/powerlevel9k
#
# @author [onaforeignshore](https://github.com/onaforeignshore)
#
# @version Last update: June 17, 2018
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
# === PROMPT CONFIGURATION
# === SYSTEM STATUS SEGMENTS
#         *** background_jobs
#         *** battery
#         *** context
#					*** date
#         *** dir
#         *** dir_writable - no additional settings
#         *** disk_usage
#         *** history - no additional settings
#         *** host - no additional settings
#         *** ip
#         *** load - no additional settings
#         *** os_icon
#         *** public_ip
#         *** ram
#         *** root_indicator
#         *** ssh - no additional settings
#         *** status
#         *** swap - no additional settings
#         *** time
#         *** user - no additional settings
#         *** vpn_ip
# === DEVELOPMENT ENVIRONMENT SEGMENTS
#         *** vcs
#         *** vcs symbols
# === LANGUAGE SEGMENTS
#     --- GoLang Segments
#         *** go_version - no additional settings
#     --- Javascript / Node.js Segments
#         *** node_version - no additional settings
#         *** nodeenv - no additional settings
#         *** nvm - no additional settings
#     --- PHP Segments
#         *** php_version - no additional settings
#         *** symfony_tests - no additional settings
#         *** symfony_version - no additional settings
#     --- Python Segments
#         *** virtualenv - no additional settings
#         *** anaconda
#         *** pyenv - no additional settings
#     --- Ruby Segments
#         *** chruby - no additional settings
#         *** rbenv - no additional settings
#         *** rspec_stats - no additional settings
#     --- Rust Segments
#         *** rust_version - no additional settings
#     --- Swift Segments
#         *** swift_version - no additional settings
# === CLOUD SEGMENTS
#     --- AWS Segments
#         *** aws
#         *** aws_eb_env - no additional settings
#     --- Docker Segments
#         *** docker_machine - no additional settings
# === OTHER SEGMENTS
#         *** command_execution_time
#         *** custom_command
# === MY CUSTOM SEGMENTS
# === COLOR SCHEMES
# === MY THEME OVERRIDES
#     --- SYSTEM ICONS
#         *** Separators and Icons
#     --- SYSTEM STATUS SEGMENTS
#         *** background_jobs
#         *** battery
#         *** context
#         *** date
#         *** dir
#         *** dir_writeable
#         *** disk_usage
#         *** history
#         *** host
#         *** ip
#         *** load
#         *** os_icon
#         *** public_ip
#         *** ram
#         *** ssh
#         *** status
#         *** swap
#         *** time
#         *** todo
#         *** user
#         *** vi_mode
#         *** vpn_ip
#     --- DEVELOPMENT ENVIRONMENT SEGMENTS
#         *** vcs
#         *** go_version
#         *** node_env
#     --- PHP Segments
#         *** symfony_version
#     --- Python Segments
#         *** anaconda
#         *** pyenv
#     --- Ruby Segments
#         *** rbenv
#     --- Rust Segments
#         *** rust_version
#     --- Swift Segments
#         *** swift_version
#     --- AWS Segments
#         *** aws
#         *** aws_eb_env
#     --- Docker Segments
#         *** docker_machine
#     --- OTHER SEGMENTS
#         *** command_execution_time
#         *** dropbox
#         *** kubecontext
#         *** test_stats
#         *** Cursor Shape
#     --- My Custom Segments
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
#     P9K_<segment[_state]>_FOREGROUND=""
#     P9K_<segment[_state]>_BACKGROUND=""
#
# Example:
#     P9K_TIME_FOREGROUND="red"
#     P9K_TIME_BACKGROUND="021" # Dark blue
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
#     P9K_<segment[_state]>_ICON=
#     P9K_<segment[_state]>_ICON_COLOR=
#
# Example:
#     P9K_TIME_ICON="T:"
#     P9K_TIME_ICON_COLOR="252"
#
# You can also set a segment to be printed in bold by setting the option to 'true'.
#
# Format:
#     P9K_<segment[_state]>_BOLD=
#
# Example:
#     P9K_TIME_BOLD=true
#

#---------------------------------------
# Segments with States
#---------------------------------------
#
# Some segments have state. For example, if you become root, or modify a file in your version control system, segments
# try to reflect this fact by changing the color. For these segments you still can modify the color to your needs by
# setting a variable like P9K_<name-of-segment>_<state>_BACKGROUND. Segments with state are:
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
#     P9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs_joined)
#
# This works with every segment, even with custom ones and with conditional ones.
#

#=======================================
# GENERAL SETTINGS
#=======================================
# Uncomment this line for ZIM installations
#P9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme

# Uncomment this line for Antigen installations
#P9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Uncomment this line to try the beta asynchronous generator
#P9K_GENERATOR="zsh-async"

#=======================================
# FONT SUPPORT
#=======================================

# NOTE:
# To use the features below, you have to install the font and make it the default font in your terminal emulator.

# For installation instructions for Powerline Fonts
# See: https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation

# Uncomment if you are using Awesome Powerline Font, and you prefer flat segment transitions
#P9K_MODE="flat"

# Uncomment if you are using Awesome Terminal Font
# See: https://github.com/gabrielelana/awesome-terminal-fonts
#P9K_MODE="awesome-fontconfig"

# Uncomment if you are using Awesome Patched Font
# See: https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
#P9K_MODE="awesome-flat"

# Uncomment if you are using a Nerd supported font
# See: https://github.com/ryanoasis/nerd-fonts
P9K_MODE="nerdfont-complete"

#=======================================
# PROMPT CONFIGURATION
#=======================================

# multiline prompt
#P9K_PROMPT_ON_NEWLINE=true						# double line prompt
#P9K_RPROMPT_ON_NEWLINE=true						# place the right prompt on second line
#P9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#P9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{9}%} ❯ %{%F{default}%} "

#P9K_PROMPT_ADD_NEWLINE=true						# new line before prompt
#P9K_DISABLE_RPROMPT=true							# disable the right prompt

# segment/sub segment separators
# uncomment a set of separators below
# P9K_LEFT_SEGMENT_SEPARATOR='\uE0B0'				# 
# P9K_RIGHT_SEGMENT_SEPARATOR='\uE0B2'				# 
# P9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'			# 
# P9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B3'			# 

P9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'				# 
P9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'				# 
P9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B5'				# 
P9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B7'			# 

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0B8 '				# 
# P9K_RIGHT_SEGMENT_SEPARATOR=' \uE0BA'				#  
# P9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B9 '				# 
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=' \uE0BB'			#  

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0BC '				# 
# P9K_RIGHT_SEGMENT_SEPARATOR=' \uE0BE'				#  
# P9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0BD '				# 
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=' \uE0BF'			#  

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0C0 '				# 
# P9K_RIGHT_SEGMENT_SEPARATOR=' \uE0C2'				#  
# P9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0C1 '				# 
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=' \uE0C3'			#  

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0C4 '				# 
# P9K_RIGHT_SEGMENT_SEPARATOR=' \uE0C5'				#  
# P9K_LEFT_SUBSEGMENT_SEPARATOR=''				#
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=''			#

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0C6'				# 
# P9K_RIGHT_SEGMENT_SEPARATOR='\uE0C7'				#  
# P9K_LEFT_SUBSEGMENT_SEPARATOR=''				#
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=''			#

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0C8 '				# 
# P9K_RIGHT_SEGMENT_SEPARATOR=' \uE0CA'				# 
# P9K_LEFT_SUBSEGMENT_SEPARATOR=''				#
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=''			#

# P9K_LEFT_SEGMENT_SEPARATOR='\uE0D2 '				# 
# P9K_RIGHT_SEGMENT_SEPARATOR=' \uE0D4'				# 
# P9K_LEFT_SUBSEGMENT_SEPARATOR=''				#
# P9K_RIGHT_SUBSEGMENT_SEPARATOR=''			#

# Uncomment this line to use fancy edge separators
P9K_FANCY_EDGE=true

# Uncomment this line to show the right prompt icons on the left
P9K_RPROMPT_ICON_LEFT=true

#=======================================
# SYSTEM STATUS SEGMENTS
#=======================================

# *****  background_jobs  *****
# If there is more than one background job, this segment will show the number of jobs. Set this to false to turn this feature off.

P9K_BACKGROUND_JOBS_VERBOSE=true

# *****  battery  *****
# This segment will display your current battery status (fails gracefully on systems without a battery). It is
# supported on both OSX and Linux (note that it requires acpi on Linux).

#P9K_BATTERY_LOW_THRESHOLD=10						# Threshold to consider battery level critical.
#P9K_BATTERY_VERBOSE=true							# Display time remaining next to battery level.

# *****  context  *****
# The context segment (user@host string) is conditional. By default, it will only print if you are not your "normal"
# user (including if you are root), or if you are SSH"d to a remote host.
#
# To use this feature, make sure the context segment is enabled in your prompt elements (it is by default), and define
# a DEFAULT_USER in your ~/.zshrc.

#export DEFAULT_USER="$User"								# Username to consider a "default context" (you can also
															# set $USER).
#P9K_ALWAYS_SHOW_CONTEXT=true						# Always show this segment, including $USER and hostname.
#P9K_ALWAYS_SHOW_USER=true							# Always show the username, but conditionalize the
															# hostname.
#P9K_CONTEXT_TEMPLATE="%n@%m"						# Default context prompt (username@machine).

# Refer to the ZSH Documentation for all possible expansions, including deeper host depths.
# You can customize the context segment. For example, you can make it to print the full hostname by setting
#P9K_CONTEXT_TEMPLATE="%n@`hostname -f`"

#P9K_CONTEXT_HOST_DEPTH=							# variable to change how the hostname is displayed.

# See (ZSH Manual)[http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Login-information] for details.
# The default is set to %m which will show the hostname up to the first ‘.’ You can set it to %{N}m where N is an
# integer to show that many segments of system hostname. Setting N to a negative integer will show that many segments
# from the end of the hostname.

# *****  date  *****
# Show system date.

#P9K_DATE_FORMAT="%D{%d.%m.%y}"					# Default date format
#P9K_DATE_FORMAT="%D{%m/%d/%y}"					# American date format
P9K_DATE_FORMAT="%D{%d-%m-%y}"

# *****  dir  *****
# The dir segment shows the current working directory. When using the "Awesome Powerline" fonts, there are additional
# glyphs, as well
P9K_SHORTEN_DIR_LENGTH=2							# If your shorten strategy, below, is entire directories,
															# this field determines how many directories to leave at
															# the end. If your shorten strategy is by character count,
															# this field determines how many characters to allow per
															# directory string.

#
#     Strategy Name                  Description
#     -------------                  -----------
#     Default                        Truncate whole directories from left. How many is defined by
#                                    P9K_SHORTEN_DIR_LENGTH
#     truncate_middle                Truncates the middle part of a folder. E.g. you are in a folder named
#                                    "/MySuperProjects/AwesomeFiles/BoringOffice", then it will truncated to
#                                    "/MyS..cts/Awe..les/BoringOffice", if P9K_SHORTEN_DIR_LENGTH=3 is also
#                                    set (controls the amount of characters to be left).
#     truncate_from_right            Just leaves the beginning of a folder name untouched. E.g. your folders will be
#                                    truncated like so: "/ro../Pr../office". How many characters will be untouched is
#                                    controlled by P9K_SHORTEN_DIR_LENGTH.
#     truncate_from_left             Just leaves the end of a folder name untouched. E.g. your folders will be
#                                    truncated like so: "/..ot/..ct/office". How many characters will be untouched is
#                                    controlled by P9K_SHORTEN_DIR_LENGTH.
#     truncate_to_last               Only display the folder that we are currently in.
#     truncate_to_first_and_last     Truncate middle directories from the path. How many directories will be
#                                    untouched is controlled by P9K_SHORTER_DIR_LENGTH
#     truncate_absolute              Only display the last characters of the path. How many characters will be
#                                    untouched is controlled by P9K_SHORTER_DIR_LENGTH
#     truncate_to_unique             For each parent path component, find the shortest unique beginning character
#                                    sequence.
#     truncate_with_folder_marker    Search for a file that is specified by P9K_SHORTEN_FOLDER_MARKER and
#                                    truncate everything before that (if found, otherwise stop on $HOME and ROOT).
#     truncate_with_package_name     Search for a package.json or composer.json and prints the name field to
#                                    abbreviate the directory path. The precedence and/or files could be set by
#                                    P9K_DIR_PACKAGE_FILES=(package.json composer.json). Please note that
#                                    this currently looks for .git directory to determine the root of the project.
#

P9K_SHORTEN_STRATEGY="truncate_to_unique"					# How the directory strings should be truncated. See the
															# table above for more informations.
#P9K_SHORTEN_DELIMITER=".."						# Delimiter to use in truncated strings. This can be any
															# string you choose, including an empty string if you wish
															# to have no delimiter.
#P9K_SHORTEN_FOLDER_MARKER='.shorten_folder_marker'	# Filename to use to indicate where to shorten the path when
															# using "truncate_with_folder_marker".
#P9K_SHORTEN_DELIMITER="\u2026"						# …
P9K_SHORTEN_DELIMITER="…"						# …

P9K_HOME_FOLDER_ABBREVIATION="~"

#P9K_DIR_PATH_ABSOLUTE=true                        # uncomment this if you want to use absolute paths instead of
																														# home folder abbreviations.
#P9K_DIR_OMIT_FIRST_CHARACTER=true					# omit the first character (usually a slash
															# that gets replaced if you set
															# P9K_DIR_PATH_SEPARATOR)

# Unfortunately, you cannot use $(printIcon "") here as it fails.
# Unicode \uXXXX codes are printed literally as XXX.
#P9K_DIR_PATH_SEPARATOR=$(echo -n " \uE0B1 ")		# customize the directory separator E0B1 
#P9K_DIR_PATH_SEPARATOR="  "

P9K_DIR_SHOW_WRITABLE=true

#TODO
#P9K_DIR_HYPERLINK=true

# *****  dir_writable - no additional settings  *****
# Displays a lock icon, if you do not have write permissions on the current folder.

# *****  disk_usage  *****
# The disk_usage segment will show the usage level of the partition that your current working directory resides in.

#P9K_DISK_USAGE_ONLY_WARNING=false					# Hide the segment except when usage levels have hit
															# warning or critical levels.
#P9K_DISK_USAGE_WARNING_LEVEL=90					# The usage level that triggers a warning state.
#P9K_DISK_USAGE_CRITICAL_LEVEL=95					# The usage level that triggers a critical state.

# *****  history - no additional settings  *****
# The command number for the current line.

# *****  host - no additional settings  *****
# This segment displays the current host.

# *****  ip  *****
# This segment tries to examine all currently used network interfaces and prints the first address it finds.

#P9K_IP_INTERFACE="None"							# The NIC for which you wish to display the IP address.
															# Example: eth0.

# *****  load - no additional settings  *****
# Your machine"s load averages.

# *****  os_icon  *****
# Display a nice little icon, depending on your operating system.

# *****  public_ip  *****
#This segment will display your public IP address. There are several methods of obtaining this information and by
# default it will try all of them starting with the most efficient. You can also specify which method you would like
# it to use. The methods available are dig using opendns, curl, or wget. The host used for wget and curl is
# http://ident.me by default but can be set to another host if you prefer.

#P9K_PUBLIC_IP_FILE="/tmp/p8k_public_ip"			# This is the file your public IP is cached in.
#P9K_PUBLIC_IP_HOST="http://ident.me"				# This is the default host to get your public IP.
#P9K_PUBLIC_IP_TIMEOUT=300							# The amount of time in seconds between refreshing your
															# cached IP.
#P9K_PUBLIC_IP_METHODS=(dig curl wget)				# These methods in that order are used to refresh your IP.
#P9K_PUBLIC_IP_NONE="None"							# The string displayed when an IP was not obtained

# Set the following variable to the VPN interface for this to work
P9K_PUBLIC_IP_VPN_INTERFACE="ppp0"

# *****  ram  *****
# Show free RAM.

P9K_RAM_ELEMENTS="Both"							# Specify ram_free or swap_used to only show one or the
															# other rather than both.

# *****  root_indicator  *****
# An indicator if the user has superuser status.

# *****  ssh - no additional settings  *****
# Indicates whether or not you are in an SSH session.

# *****  status  *****
# This segment shows the return code of the last command.

#P9K_STATUS_CROSS=true								# uncomment this line to use a cross instead of a carriage return
																			# note that this hides the error code and pipestatus
#P9K_STATUS_OK=false									# uncomment this line to hide status segment when ok
#P9K_STATUS_SHOW_PIPESTATUS=false			# uncomment this line to hide pipe status results
#P9K_STATUS_VERBOSE=false							# uncomment this line to hide this segment when the last
																			# command completed successfully by setting
																			# P9K_STATUS_OK_IN_NON_VERBOSE to false.
#P9K_STATUS_OK_IN_NON_VERBOSE=true		# uncomment this line to show this segment when the last command
																			# completed successfully in non-verbose mode.


# *****  swap - no additional settings  *****
# Prints the current swap size.

# *****  time  *****
# Show system time.

P9K_TIME_FORMAT="%D{%H:%M:%S}"						# ZSH time format to use in this segment.
#P9K_TIME_FORMAT="%D{%S:%M:%H}"					# Reversed time format
#P9K_TIME_FORMAT="%D{%H:%M:%S \uf073  %d.%m.%y}"	# Output time, date, and a symbol  from the "Awesome
															# Powerline Font" set

# *****  user - no additional settings  *****
# This segment displays the current user.

# *****  vpn_ip  *****
# Set the following variable to the VPN interface for this to work
P9K_VPN_IP_INTERFACE="ppp0"

#=======================================
# DEVELOPMENT ENVIRONMENT SEGMENTS
#=======================================

# *****  vcs  *****
# By default, the vcs segment will provide quite a bit of information.
#P9K_HIDE_BRANCH_ICON=true						# set to hide the branch icon from the segment.
#P9K_SHOW_CHANGESET=true								# set to display the hash/changeset in the segment.
#P9K_CHANGESET_HASH_LENGTH=6						# How many characters of the hash/changeset to display in
																			# the segment.
P9K_VCS_SHOW_SUBMODULE_DIRTY=true			# set to reflect submodule status in the top-level
																			# repository prompt.
#P9K_VCS_HIDE_TAGS=false								# set to stop tags being displayed in the segment.

# *****  vcs symbols  *****
# The vcs segment uses various symbols to tell you the state of your repository. These symbols depend on your
# installed font and selected P9K_MODE from the Installation section above.

#
#		Compatible  Powerline   Awesome          Explanation
#               Powerline
#		↑4          ↑4          4 (\uf01b)      Number of commits your repository is ahead of your remote branch
#		↓5          ↓5          5 (\uf01a)      Number of commits your repository is behind of your remote branch
#		⍟3          ⍟3          3 (\uf48d)     Number of stashes, here 3.
#		●           ●            (\uf06a)      There are unstaged changes in your working copy
#		✚           ✚           (\uf055)      There are staged changes in your working copy
#		?           ?            (\uf059)      There are files in your working copy unknown to your repository
#		→          →           (\uf403)      The name of your branch differs from its tracking branch.
#		☿          ☿            (\uf462)      A mercurial bookmark is active.
#		@            (\ue0a0)   (\uf418)      Branch Icon
#		None        None        2c3705 (\uf417) The current commit hash. Here "2c3705"
#		None        None         (\uf406)      Repository is a git repository
#		None        None         (\uf0c3)      Repository is a Mercurial repository
#

#=======================================
# LANGUAGE SEGMENTS
#=======================================

#---------------------------------------
# GoLang Segments
#---------------------------------------

# *****  go_version - no additional settings  *****
# Show the current GO version

#---------------------------------------
# Javascript / Node.js Segments
#---------------------------------------

# *****  node_version - no additional settings  *****
# Show the version number of the installed Node.js

# *****  nodeenv - no additional settings  *****
# Prompt for displaying node version and environment name.
# See: https://github.com/ekalinin/nodeenv

# *****  nvm - no additional settings  *****
# Show the version of Node that is currently active, if it differs from the version used by NVM.

#---------------------------------------
# PHP Segments
#---------------------------------------

# *****  php_version - no additional settings  *****
# Show the current PHP version.

# *****  symfony_tests - no additional settings  *****
# The symfony_tests segment shows a ratio of "real" classes vs test classes in your source code. This is just a very
# simple ratio, and does not show your code coverage or any sophisticated stats. All this does is count your source
# files and test files, and calculate the ratio between them. Just enough to give you a quick overview about the test
# situation of the project you are dealing with.

# *****  symfony_version - no additional settings  *****
# Show the current symfony version, if you are in a symfony-Project dir.

#---------------------------------------
# Python Segments
#---------------------------------------

# *****  virtualenv - no additional settings  *****
# Your Python VirtualEnv.
# See: https://virtualenv.pypa.io/en/latest/

# *****  anaconda  *****
# This segment shows your active anaconda environment. It relies on either the CONDA_ENV_PATH or the CONDA_PREFIX
# (depending on the conda version) environment variable to be set which happens when you properly source activate
# an environment.

#P9K_ANACONDA_LEFT_DELIMITER="("
#P9K_ANACONDA_RIGHT_DELIMITER=")"

# *****  pyenv - no additional settings  *****
# Your active python version as reported by the first word of pyenv version. Note that the segment is not displayed if
# that word is system i.e. the segment is inactive if you are using system python.

#---------------------------------------
# Ruby Segments
#---------------------------------------

# *****  chruby - no additional settings  *****
# Ruby environment information using chruby (if one is active).

# *****  rbenv - no additional settings  *****
# This segment shows the version of Ruby being used when using rbenv to change your current Ruby stack. It figures out
# the version being used by taking the output of the rbenv version-name command. If rbenv is not in $PATH, nothing
# will be shown. If the current Ruby version is the same as the global Ruby version, nothing will be shown.

# *****  rspec_stats - no additional settings  *****
# The rspec_stats segment shows a ratio of "real" classes vs test classes in your source code. This is just a very
# simple ratio, and does not show your code coverage or any sophisticated stats. All this does is count your source
# files and test files, and calculate the ratio between them. Just enough to give you a quick overview about the test
# situation of the project you are dealing with.

#---------------------------------------
# Rust Segments
#---------------------------------------

# *****  rust_version - no additional settings  *****
# Display the current rust version and logo.  (\uE7A8)

#---------------------------------------
# Swift Segments
#---------------------------------------

# *****  swift_version - no additional settings  *****
# Show the version number of the installed Swift.

#=======================================
# CLOUD SEGMENTS
#=======================================

#---------------------------------------
# AWS Segments
#---------------------------------------

# *****  aws  *****
# If you would like to display the current AWS profile, add the aws segment to one of the prompts, and define
# AWS_DEFAULT_PROFILE in your ~/.zshrc

#AWS_DEFAULT_PROFILE=""										# your AWS profile name

# *****  aws_eb_env - no additional settings  *****
# The current Elastic Beanstalk Environment.

#---------------------------------------
# Docker Segments
#---------------------------------------

# *****  docker_machine - no additional settings  *****
# The current Docker Machine.

#=======================================
# OTHER SEGMENTS
#=======================================

# *****  command_execution_time  *****
# Display the time the previous command took to execute if the time is above
# P9K_COMMAND_EXECUTION_TIME_THRESHOLD.
# The time is formatted to be "human readable", and so scales the units based on the length of execution time.
# If you want more precision, just set the P9K_COMMAND_EXECUTION_TIME_PRECISION field.

P9K_COMMAND_EXECUTION_TIME_THRESHOLD=3			# Threshold above which to print this segment. Can be set
															# to 0 to always print.
P9K_COMMAND_EXECUTION_TIME_PRECISION=2			# Number of digits to use in the fractional part of the
															# time value.

# *****  custom_command  *****
# The custom_... segment allows you to turn the output of a custom command into a prompt segment. As an example, if
# you wanted to create a custom segment to display your WiFi signal strength, you might define a custom segment called
# custom_wifi_signal like this:
#P9K_CUSTOM_WIFI_SIGNAL="echo signal: \$(nmcli device wifi | grep yes | awk "{print \$8}")"
#P9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="blue"
#P9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"

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
#P9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"

#=======================================
# MY CUSTOM SEGMENTS
#=======================================


#=======================================
# COLOR SCHEMES
#=======================================

P9K_COLOR_SCHEME="dark"							# "light" or "dark"

#=======================================
# MY THEME OVERRIDES
#=======================================

#---------------------------------------
# SYSTEM ICONS
#---------------------------------------

# *****  Separators and Icons  *****
#P9K_LEFT_SEGMENT_SEPARATOR=""
#P9K_LEFT_SUBSEGMENT_SEPARATOR=""
#P9K_LEFT_SEGMENT_END_SEPARATOR=""
#P9K_RIGHT_SEGMENT_SEPARATOR=""
#P9K_RIGHT_SUBSEGMENT_SEPARATOR=""

#---------------------------------------
# SYSTEM STATUS SEGMENTS
#---------------------------------------

# *****  background_jobs  *****
#P9K_BACKGROUND_JOBS_BACKGROUND=""
#P9K_BACKGROUND_JOBS_FOREGROUND=""
P9K_BACKGROUND_JOBS_ICON="\uF013 "                  # F013 
P9K_BACKGROUND_JOBS_ICON_COLOR="255"
#P9K_BACKGROUND_JOBS_BOLD=true

# *****  battery  *****
#P9K_BATTERY_CHARGED_BACKGROUND=""
P9K_BATTERY_CHARGED_FOREGROUND="250"
#P9K_BATTERY_CHARGED_ICON=""
P9K_BATTERY_CHARGED_ICON_COLOR="255"
#P9K_BATTERY_CHARGED_BOLD=true

#P9K_BATTERY_CHARGING_BACKGROUND=""
P9K_BATTERY_CHARGING_FOREGROUND="250"
#P9K_BATTERY_CHARGING_ICON=""
P9K_BATTERY_CHARGING_ICON_COLOR="255"
#P9K_BATTERY_CHARGING_BOLD=true

#P9K_BATTERY_DISCONNECTED_BACKGROUND=""
P9K_BATTERY_DISCONNECTED_FOREGROUND="250"
#P9K_BATTERY_DISCONNECTED_ICON=""
P9K_BATTERY_DISCONNECTED_ICON_COLOR="255"
#P9K_BATTERY_DISCONNECTED_BOLD=true

#P9K_BATTERY_LOW_BACKGROUND=""
P9K_BATTERY_LOW_FOREGROUND="250"
#P9K_BATTERY_LOW_ICON=""
P9K_BATTERY_LOW_ICON_COLOR="255"
#P9K_BATTERY_LOW_BOLD=true

# *** choose from here for changing background by current battery level
# set if you want the background to change color with level. this overrides the state settings in the color selection.
# You can still specify foreground color and bold though.
#P9K_BATTERY_LEVEL_BACKGROUND=(196 202 208 214 220 226 190 154 118  82  46) # bright
#P9K_BATTERY_LEVEL_BACKGROUND=(124 130 136 142 148 112  76  40  34  28  22) # normal
P9K_BATTERY_LEVEL_BACKGROUND=(  88  94 100 106  70  34  28  22) # subdued

# P9K_BATTERY_STAGES accepts either a string or an array.
# Note that if you use a string for characters that are wider than a single character will cause the icon to be very
# close to the remaining time. In this case, it is better to use the array version of `P9K_BATTERY_STAGES`,
# so that you can add a space after.

# Uncomment only one of the following, or create your own

#P9K_BATTERY_STAGES="" #  \uF244  \uF243  \uF242  \uF241  \uF240
#P9K_BATTERY_STAGES=("\uF244 " "\uF243 " "\uF242 " "\uF241 " "\uF240 ")

P9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
#P9K_BATTERY_STAGES=("\u2581 " "\u2582 " "\u2583 " "\u2584 " "\u2585 " "\u2586 " "\u2587 " "\u2588 ")

#P9K_BATTERY_STAGES="▏▎▍▌▋▊▉█"
#P9K_BATTERY_STAGES=("\u258F " "\u258E " "\u258D " "\u258C " "\u258B " "\u258A " "\u2589 " "\u2588 ")

# Uncomment all 5 lines if you want to use this indicator
# P9K_BATTERY_STAGES=(
#   "▏    ▏" "▎    ▏" "▍    ▏" "▌    ▏" "▋    ▏" "▊    ▏" "▉    ▏" "█    ▏"
#   "█▏   ▏" "█▎   ▏" "█▍   ▏" "█▌   ▏" "█▋   ▏" "█▊   ▏" "█▉   ▏" "██   ▏"
#   "██   ▏" "██▎  ▏" "██▍  ▏" "██▌  ▏" "██▋  ▏" "██▊  ▏" "██▉  ▏" "███  ▏"
#   "███  ▏" "███▎ ▏" "███▍ ▏" "███▌ ▏" "███▋ ▏" "███▊ ▏" "███▉ ▏" "████ ▏"
#   "████ ▏" "████▎▏" "████▍▏" "████▌▏" "████▋▏" "████▊▏" "████▉▏" "█████▏" )

# *****  context  *****
#P9K_CONTEXT_DEFAULT_BACKGROUND=""
#P9K_CONTEXT_DEFAULT_FOREGROUND=""
#P9K_CONTEXT_DEFAULT_ICON=""
#P9K_CONTEXT_DEFAULT_ICON_COLOR=""
#P9K_CONTEXT_DEFAULT_BOLD=true

#P9K_CONTEXT_ROOT_BACKGROUND=""
#P9K_CONTEXT_ROOT_FOREGROUND=""
#P9K_CONTEXT_ROOT_ICON=""
#P9K_CONTEXT_ROOT_ICON_COLOR=""
#P9K_CONTEXT_ROOT_BOLD=true

# *****  date  *****
P9K_DATE_BACKGROUND="20"
P9K_DATE_FOREGROUND="250"
P9K_DATE_ICON="\uF073"                              # F073 
P9K_DATE_ICON_COLOR="255"
#P9K_DATE_BOLD=true

# *****  dir  *****
P9K_DIR_DEFAULT_BACKGROUND="27"
P9K_DIR_DEFAULT_FOREGROUND="252"
P9K_DIR_DEFAULT_ICON="\uF115"                            # E5FF  / F07B  / F115 
P9K_DIR_DEFAULT_ICON_COLOR="255"
#P9K_DIR_DEFAULT_BOLD=true

P9K_DIR_HOME_BACKGROUND="27"
P9K_DIR_HOME_FOREGROUND="252"
P9K_DIR_HOME_ICON="\uF46D"                              # F015  / F46D 
P9K_DIR_HOME_ICON_COLOR="255"
#P9K_DIR_HOME_BOLD=true

P9K_DIR_HOME_SUBFOLDER_BACKGROUND="27"
P9K_DIR_HOME_SUBFOLDER_FOREGROUND="252"
P9K_DIR_HOME_SUBFOLDER_ICON="\uF114"                          # E5FE  / F07C  / F114 
P9K_DIR_HOME_SUBFOLDER_ICON_COLOR="255"
#P9K_DIR_HOME_SUBFOLDER_BOLD=true

P9K_DIR_NOT_WRITABLE_BACKGROUND="124"
P9K_DIR_NOT_WRITABLE_FOREGROUND="252"
#P9K_DIR_NOT_WRITABLE_ICON=""
P9K_DIR_NOT_WRITABLE_ICON_COLOR="255"
#P9K_DIR_NOT_WRITABLE_BOLD=true

P9K_DIR_ETC_BACKGROUND="55"
P9K_DIR_ETC_FOREGROUND="252"
#P9K_DIR_ETC_ICON=""
P9K_DIR_ETC_ICON_COLOR="255"
#P9K_DIR_ETC_BOLD=true

P9K_DIR_PATH_HIGHLIGHT_FOREGROUND="226"
P9K_DIR_PATH_HIGHLIGHT_BOLD=true

P9K_DIR_PATH_SEPARATOR_FOREGROUND="226"

# *****  dir_writeable  *****
#P9K_DIR_WRITEABLE_BACKGROUND=""
#P9K_DIR_WRITEABLE_FOREGROUND=""
P9K_DIR_WRITEABLE_ICON="\uF023"                              # F023 
#P9K_DIR_WRITEABLE_ICON_COLOR=""
#P9K_DIR_WRITEABLE_BOLD=true

# *****  disk_usage  *****
#P9K_DISK_USAGE_NORMAL_BACKGROUND=""
#P9K_DISK_USAGE_NORMAL_FOREGROUND=""
P9K_DISK_USAGE_NORMAL_ICON="\uF0A0"                              # F0A0 
#P9K_DISK_USAGE_NORMAL_ICON_COLOR=""
#P9K_DISK_USAGE_NORMAL_BOLD=true

#P9K_DISK_USAGE_WARNING_BACKGROUND=""
#P9K_DISK_USAGE_WARNING_FOREGROUND=""
P9K_DISK_USAGE_WARNING_ICON="\uF0A0"                              # F0A0 
#P9K_DISK_USAGE_WARNING_ICON_COLOR=""
#P9K_DISK_USAGE_WARNING_BOLD=true

#P9K_DISK_USAGE_CRITICAL_BACKGROUND=""
#P9K_DISK_USAGE_CRITICAL_FOREGROUND=""
P9K_DISK_USAGE_CRITICAL_ICON="\uF0A0"                              # F0A0 
#P9K_DISK_USAGE_CRITICAL_ICON_COLOR=""
#P9K_DISK_USAGE_CRITICAL_BOLD=true

# *****  history  *****
P9K_HISTORY_BACKGROUND="18"
P9K_HISTORY_FOREGROUND="250"
P9K_HISTORY_ICON="\uF464"                           # E29A  / F16C  / F1DC  / F464 
P9K_HISTORY_ICON_COLOR="255"
#P9K_HISTORY_BOLD=true

# *****  host  *****
P9K_HOST_LOCAL_BACKGROUND="22"
P9K_HOST_LOCAL_FOREGROUND="250"
P9K_HOST_LOCAL_ICON="\uF26C"                              # F108  / F109  / F26C  / F67C 
P9K_HOST_LOCAL_ICON_COLOR="255"
P9K_HOST_LOCAL_BOLD=true

P9K_HOST_REMOTE_BACKGROUND="52"
P9K_HOST_REMOTE_FOREGROUND="250"
#P9K_HOST_REMOTE_ICON=""
P9K_HOST_REMOTE_ICON_COLOR="255"
P9K_HOST_REMOTE_BOLD=true

# *****  ip  *****
#P9K_IP_BACKGROUND=""
#P9K_IP_FOREGROUND=""
P9K_IP_ICON="\uF424"                           # F1EB  / F424 
#P9K_IP_ICON_COLOR=""
#P9K_IP_BOLD=true

# *****  load  *****
#P9K_LOAD_DEFAULT_BACKGROUND=""
#P9K_LOAD_DEFAULT_FOREGROUND=""
P9K_LOAD_DEFAULT_ICON="\uF463 "                         # E234  / F080  / F1FE  / F463 
#P9K_LOAD_DEFAULT_ICON_COLOR=""
#P9K_LOAD_DEFAULT_BOLD=true

#P9K_LOAD_WARNING_BACKGROUND=""
#P9K_LOAD_WARNING_FOREGROUND=""
P9K_LOAD_WARNING_ICON="\uF463 "                         # E234  / F080  / F1FE  / F463 
#P9K_LOAD_WARNING_ICON_COLOR=""
#P9K_LOAD_WARNING_BOLD=true

#P9K_LOAD_CRITICAL_BACKGROUND=""
#P9K_LOAD_CRITICAL_FOREGROUND=""
P9K_LOAD_CRITICAL_ICON="\uF463 "                         # E234  / F080  / F1FE  / F463 
#P9K_LOAD_CRITICAL_ICON_COLOR=""
#P9K_LOAD_CRITICAL_BOLD=true

# *****  os_icon  *****
P9K_OS_ICON_BACKGROUND="54"
P9K_OS_ICON_FOREGROUND="16"
#P9K_OS_ICON_ICON=""
P9K_OS_ICON_ICON_COLOR="252"
#P9K_OS_ICON_BOLD=true

# *****  public_ip  *****
#P9K_PUBLIC_IP_BACKGROUND=""
#P9K_PUBLIC_IP_FOREGROUND=""
P9K_PUBLIC_IP_ICON="\uF0AC"                     # F0AC 
#P9K_PUBLIC_IP_ICON_COLOR=""
#P9K_PUBLIC_IP_BOLD=true

# *****  ram  *****
#P9K_RAM_BACKGROUND=""
#P9K_RAM_FOREGROUND=""
P9K_RAM_ICON="\uF2DB"                               # F2DB 
#P9K_RAM_ICON_COLOR=""
#P9K_RAM_BOLD=true

# *****  ssh  *****
#P9K_SSH_BACKGROUND=""
#P9K_SSH_FOREGROUND=""
P9K_SSH_ICON="\uF489"                               # 
#P9K_SSH_ICON_COLOR=""
#P9K_SSH_BOLD=true

# *****  status  *****
P9K_STATUS_OK_BACKGROUND="236"						# (note: only, if verbose is true)
P9K_STATUS_OK_FOREGROUND="250"						# (note: only, if verbose is true)
P9K_STATUS_OK_ICON="\uF42E"               # F00C  / F42E  (note: only, if verbose is true)
P9K_STATUS_OK_ICON_COLOR="28"			        # (note: only, if verbose is true)
#P9K_STATUS_OK_BOLD=true

P9K_STATUS_ERROR_BACKGROUND="236"
P9K_STATUS_ERROR_FOREGROUND="250"
P9K_STATUS_ERROR_ICON="\uF467"                              # F00D  / F467 
P9K_STATUS_ERROR_ICON_COLOR="160"
#P9K_STATUS_ERROR_BOLD=true

P9K_STATUS_ERROR_CR_BACKGROUND="236"
P9K_STATUS_ERROR_CR_FOREGROUND="250"
P9K_STATUS_ERROR_CR_ICON="\u21B5"                   # 21B5 ↵
P9K_STATUS_ERROR_CR_ICON_COLOR="160"
#P9K_STATUS_ERROR_CR_BOLD=true

# *****  swap  *****
#P9K_SWAP_BACKGROUND=""
#P9K_SWAP_FOREGROUND=""
P9K_SWAP_ICON="\uF705"                              # E705  / E706  / F464 
#P9K_SWAP_ICON_COLOR=""
#P9K_SWAP_BOLD=true

# *****  time  *****
P9K_TIME_BACKGROUND="21"
P9K_TIME_FOREGROUND="250"
P9K_TIME_ICON="\uF43A"                              # F43A 
P9K_TIME_ICON_COLOR="255"
#P9K_TIME_BOLD=true

# *****  todo  *****
P9K_TODO_BACKGROUND="19"
P9K_TODO_FOREGROUND="250"
P9K_TODO_ICON="\uF046"                              # F133  / F046 
P9K_TODO_ICON_COLOR="255"
P9K_TODO_BOLD=true

# *****  user  *****
P9K_USER_DEFAULT_BACKGROUND="21"
P9K_USER_DEFAULT_FOREGROUND="250"
P9K_USER_DEFAULT_ICON="\uF2C0"                              # F007  / F2C0 
P9K_USER_DEFAULT_ICON_COLOR="255"
P9K_USER_DEFAULT_BOLD=true

P9K_USER_ROOT_BACKGROUND="124"
P9K_USER_ROOT_FOREGROUND="250"
P9K_USER_ROOT_ICON="\uF292 "                         # E614  / F198  / F292 
P9K_USER_ROOT_ICON_COLOR="255"
P9K_USER_ROOT_BOLD=true

P9K_USER_SUDO_BACKGROUND="166"
P9K_USER_SUDO_FOREGROUND="250"
P9K_USER_SUDO_ICON="\uF2C0"               # F09C  / F13E 
P9K_USER_SUDO_ICON_COLOR="255"
P9K_USER_SUDO_BOLD=true

P9K_USER_SUDOER_BACKGROUND="28"
P9K_USER_SUDOER_FOREGROUND="250"
P9K_USER_SUDOER_ICON="\uF023"               # F023 
P9K_USER_SUDOER_ICON_COLOR="255"
P9K_USER_SUDOER_BOLD=true

# *****  vi_mode  *****
# This segment shows ZSH"s current input mode. Note that this is only useful if you are using the ZSH Line Editor (VI
# mode). You can enable this either by .zshrc configuration or using a plugin, like Oh-My-Zsh"s vi-mode plugin.
# Visual mode only works if the user has installed [zsh-vimode-visual](https://github.com/b4b4r07/zsh-vimode-visual)

P9K_VI_INSERT_MODE_STRING=""
P9K_VI_MODE_INSERT_BACKGROUND="250"
P9K_VI_MODE_INSERT_FOREGROUND="24"
P9K_VI_MODE_INSERT_ICON="\uF090"					# F090  / E795  / F489 
#P9K_VI_MODE_INSERT_ICON_COLOR=""

P9K_VI_NORMAL_MODE_STRING=""
P9K_VI_MODE_NORMAL_BACKGROUND="106"
P9K_VI_MODE_NORMAL_FOREGROUND="22"
P9K_VI_MODE_NORMAL_ICON="\uF120"				# E7A2  / F120 
#P9K_VI_MODE_NORMAL_ICON_COLOR=""

P9K_VI_VISUAL_MODE_STRING=""
P9K_VI_MODE_VISUAL_BACKGROUND="214"
P9K_VI_MODE_VISUAL_FOREGROUND="94"
P9K_VI_MODE_VISUAL_ICON="\uF489"					# F489 
#P9K_VI_MODE_VISUAL_ICON_COLOR=""

# *****  vpn_ip  *****
#P9K_VPN_IP_BACKGROUND=""
#P9K_VPN_IP_FOREGROUND=""
#P9K_VPN_IP_ICON=""
#P9K_VPN_IP_ICON_COLOR=""
#P9K_VPN_IP_BOLD=true

#---------------------------------------
# DEVELOPMENT ENVIRONMENT SEGMENTS
#---------------------------------------

# *****  vcs  *****
# The VCS segment differs from other segments at the moment as some of the
# icons are defined at runtime.

# VCS color definitions

P9K_VCS_CLEAN_BACKGROUND='28'
P9K_VCS_CLEAN_FOREGROUND='250'
P9K_VCS_CLEAN_ICON_COLOR="255"

P9K_VCS_UNTRACKED_BACKGROUND='208'
P9K_VCS_UNTRACKED_FOREGROUND='250'
P9K_VCS_UNTRACKED_ICON_COLOR="255"

P9K_VCS_MODIFIED_BACKGROUND='124'
P9K_VCS_MODIFIED_FOREGROUND='250'
P9K_VCS_MODIFIED_ICON_COLOR="255"

# VCS icon definitions

P9K_VCS_GIT_ICON="\uF406 "                          # F406 
P9K_VCS_GIT_BITBUCKET_ICON="\uF171 "                # F171 
P9K_VCS_GIT_GITHUB_ICON="\uF408 "                   # F408 
P9K_VCS_GIT_GITLAB_ICON="\uF296 "                   # F296 

P9K_VCS_HG_ICON="\uF0C3 "                           # F0C3 
P9K_VCS_SVN_ICON="\uE72D "                          # E72D 

P9K_VCS_BOOKMARK_ICON="\uF461 "                 # F461 
P9K_VCS_BRANCH_ICON="\uF418 "                       # F418 
P9K_VCS_COMMIT_ICON="\uF417 "                       # F417 
P9K_VCS_INCOMING_CHANGES_ICON="\uF01A "         # F01A 
P9K_VCS_OUTGOING_CHANGES_ICON="\uF01B "         # F01B 
P9K_VCS_REMOTE_BRANCH_ICON="\uF47F "                # F47F 
P9K_VCS_STAGED_ICON="\uF055"                        # F055 
P9K_VCS_STASH_ICON="\uF48D "                        # F48D 
P9K_VCS_TAG_ICON="\uF02B "                          # F02B 
P9K_VCS_UNSTAGED_ICON="\uF06A"                      # F06A 
P9K_VCS_UNTRACKED_ICON="\uF059"                 # F059 

# *****  go_version  *****

#P9K_GO_VERSION_BACKGROUND=""
#P9K_GO_VERSION_FOREGROUND=""
P9K_GO_VERSION_ICON="\uE626"                                # E626 
#P9K_GO_VERSION_ICON_COLOR=""
#P9K_GO_VERSION_BOLD=true

# *****  node_env  *****

#P9K_NODE_ENV_BACKGROUND=""
#P9K_NODE_ENV_FOREGROUND=""
P9K_NODE_ENV_ICON="\uE617 "                         # E617 
#P9K_NODE_ENV_ICON_COLOR=""
#P9K_NODE_ENV_BOLD=true

#P9K_NODE_VERSION_BACKGROUND=""
#P9K_NODE_VERSION_FOREGROUND=""
P9K_NODE_VERSION_ICON="\uE617 "                         # E617 
#P9K_NODE_VERSION_ICON_COLOR=""
#P9K_NODE_VERSION_BOLD=true

#---------------------------------------
# PHP Segments
#---------------------------------------

# *****  symfony_version  *****
#P9K_SYMFONY2_VERSION_BACKGROUND=""                           # E757 
#P9K_SYMFONY2_VERSION_FOREGROUND=""                           # E757 
P9K_SYMFONY2_VERSION_ICON="\uE757"                           # E757 
#P9K_SYMFONY2_VERSION_ICON_COLOR=""                           # E757 
#P9K_SYMFONY2_VERSION_BOLD=true

#---------------------------------------
# Python Segments
#---------------------------------------

# *****  anaconda  *****
#P9K_ANACONDA_BACKGROUND=""
#P9K_ANACONDA_FOREGROUND=""						# Note that you can modify the _FOREGROUND color without
															# affecting the icon color.
#P9K_ANACONDA_ICON=""
#P9K_ANACONDA_ICON_COLOR=""
#P9K_ANACONDA_BOLD=true

# *****  pyenv  *****
#P9K_PYENV_BACKGROUND=""
#P9K_PYENV_FOREGROUND=""
P9K_PYENV_ICON="\uE235"                            # E235 
#P9K_PYENV_ICON_COLOR=""
#P9K_PYENV_BOLD=true

#---------------------------------------
# Ruby Segments
#---------------------------------------

# *****  rbenv  *****
#P9K_RBENV_BACKGROUND=""
#P9K_RBENV_FOREGROUND=""
P9K_RBENV_ICON="\uF219 "                         # F219 
#P9K_RBENV_ICON_COLOR=""
#P9K_RBENV_BOLD=true

#---------------------------------------
# Rust Segments
#---------------------------------------

#P9K_RUST_VERSION_BACKGROUND=""                           # E757 
#P9K_RUST_VERSION_FOREGROUND=""                           # E757 
P9K_RUST_VERSION_ICON="\uE7A8"                              # E7A8 
#P9K_RUST_VERSION_ICON_COLOR=""                           # E757 
#P9K_RUST_VERSION_BOLD=true

#---------------------------------------
# Swift Segments
#---------------------------------------

#P9K_SWIFT_VERSION_BACKGROUND=""                           # E757 
#P9K_SWIFT_VERSION_FOREGROUND=""                           # E757 
P9K_SWIFT_VERSION_ICON="\uE755"                         # E755 
#P9K_SWIFT_VERSION_ICON_COLOR=""                         # E755 
#P9K_SWIFT_VERSION_BOLD=true

#---------------------------------------
# AWS Segments
#---------------------------------------

# *****  aws  *****
#P9K_AWS_BACKGROUND=""
#P9K_AWS_FOREGROUND=""
P9K_AWS_ICON="\uF270"                               # F270 
#P9K_AWS_ICON_COLOR=""
#P9K_AWS_BOLD=true

# *****  aws_eb_env  *****
#P9K_AWS_EB_ENV_BACKGROUND=""
#P9K_AWS_EB_ENV_FOREGROUND=""
P9K_AWS_EB_ENV_ICON="\uF1BD  "                          # F1BD 
#P9K_AWS_EB_ENV_ICON_COLOR=""
#P9K_AWS_EB_ENV_BOLD=true

#---------------------------------------
# Docker Segments
#---------------------------------------

# *****  docker_machine  *****
#P9K_DOCKER_MACHINE_BACKGROUND=""
#P9K_DOCKER_MACHINE_FOREGROUND=""
P9K_DOCKER_MACHINE_ICON="\uF0AE"                            # F0AE 
#P9K_DOCKER_MACHINE_ICON_COLOR=""
#P9K_DOCKER_MACHINE_BOLD=true

#---------------------------------------
# OTHER SEGMENTS
#---------------------------------------

# *****  command_execution_time  *****
#P9K_COMMAND_EXECUTION_TIME_BACKGROUND=""
#P9K_COMMAND_EXECUTION_TIME_FOREGROUND=""
#P9K_COMMAND_EXECUTION_TIME_ICON=""
#P9K_COMMAND_EXECUTION_TIME_ICON_COLOR=""
#P9K_COMMAND_EXECUTION_TIME_BOLD=true

# *****  dropbox  *****
#P9K_DROPBOX_BACKGROUND=""
#P9K_DROPBOX_FOREGROUND=""
P9K_DROPBOX_ICON="\uF16B"                           # F16B 
#P9K_DROPBOX_ICON_COLOR=""
#P9K_DROPBOX_BOLD=true

# *****  kubecontext  *****
#P9K_KUBECONTEXT_BACKGROUND=""
#P9K_KUBECONTEXT_FOREGROUND=""
P9K_KUBECONTEXT_ICON="\u2388"                # 2388 ⎈
#P9K_KUBECONTEXT_ICON_COLOR=""
#P9K_KUBECONTEXT_BOLD=true

# *****  test_stats  *****
#P9K_TEST_STATS_AVG_BACKGROUND=""
#P9K_TEST_STATS_AVG_FOREGROUND=""
#P9K_TEST_STATS_AVG_ICON=""
#P9K_TEST_STATS_AVG_ICON_COLOR=""
#P9K_TEST_STATS_AVG_BOLD=true

#P9K_TEST_STATS_BAD_BACKGROUND=""
#P9K_TEST_STATS_BAD_FOREGROUND=""
#P9K_TEST_STATS_BAD_ICON=""
#P9K_TEST_STATS_BAD_ICON_COLOR=""
#P9K_TEST_STATS_BAD_BOLD=true

#P9K_TEST_STATS_GOOD_BACKGROUND=""
#P9K_TEST_STATS_GOOD_FOREGROUND=""
#P9K_TEST_STATS_GOOD_ICON=""
#P9K_TEST_STATS_GOOD_ICON_COLOR=""
#P9K_TEST_STATS_GOOD_BOLD=true

# *****  Cursor Shape  *****
P9K_CURSOR_SHAPE=true							 # Set to true to enable cursor shape change on supported terminals
# Cursor shape can be box [], hbar _ or vbar |
P9K_CURSOR_SHAPE_NORMAL="box"
P9K_CURSOR_SHAPE_INSERT="vbar"
P9K_CURSOR_SHAPE_VISUAL="box"
P9K_CURSOR_SHAPE_DEFAULT="hbar"

#---------------------------------------
# My Custom Segments
#---------------------------------------

P9K_NEW_BACKGROUND="54"
#P9K_NEW_FOREGROUND=""
P9K_NEW_ICON="\uF422"												# F422 
#P9K_NEW_ICON_COLOR=""


#=======================================
# PROMPT CUSTOMIZATION
#=======================================
# Choose which segments to display in your prompt

# Segment list for left prompt
#P9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# Segment list for right prompt
#P9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# You can also use different prompts in different environments, e.g. for TMUX, you might use
#if [[ "${TERM}" =~ "tmux" || "${TERM}" =~ "screen" ]]; then
#	# Segment list for left prompt
#	P9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable dir background_jobs command_execution_time vi_mode)
#	# Segment list for right prompt
#	P9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo)
#else
#	# Segment list for left prompt
#	P9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir_writable dir background_jobs command_execution_time vi_mode)
#	# Segment list for right prompt
#	P9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo date time battery)
#fi
if [[ "${TERM}" =~ "tmux" || "${TERM}" =~ "screen" ]]; then
	# Segment list for left prompt
	P9K_LEFT_PROMPT_ELEMENTS=(new os_icon dir background_jobs command_execution_time vi_mode)
	# Segment list for right prompt
	P9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv pyenv history todo)
else
	# Segment list for left prompt
	P9K_LEFT_PROMPT_ELEMENTS=(new os_icon host user dir background_jobs command_execution_time vi_mode)
	# Segment list for right prompt
	P9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv pyenv history todo date time battery)
fi

#=======================================
# LOADING POWERLEVEL9K
#=======================================

# Option 1: Install for Vanilla ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
#source $HOME/powerlevel9k/powerlevel9k.zsh-theme
source $HOME/code/powerlevel9k/powerlevel9k.zsh-theme

# Option 2: Install for Oh-My-ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
#ZSH_THEME="powerlevel9k/powerlevel9k"

# Option 3: Install for Prezto
# $ git clone https://github.com/bhilburn/powerlevel9k.git  ~/.zprezto/modules/prompt/external/powerlevel9k
# $ ln -s ~/.zprezto/modules/prompt/external/powerlevel9k/powerlevel9k.zsh-theme ~/.zprezto/modules/prompt/functions/prompt_P9K_setup
# Add to ~/.zpreztorc :
# zstyle ':prezto:module:prompt' theme 'powerlevel9k'

# Option 4: Install for antigen
#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen apply

# Option 5: Install for Zplug
# $ zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Option 6: Install for Zgen
#zgen load bhilburn/powerlevel9k powerlevel9k

# Option 7: Install for Antibody
#antibody bundle bhilburn/powerlevel9k

# Option 8: Install for ZPM
#Plug bhilburn/powerlevel9k
#source ~/.local/share/zpm/plugins/powerlevel9k/powerlevel9k.zsh-theme

# Option 9: Install for ZIM
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.zim/modules/prompt/external-themes/powerlevel9k
# $ ln -s ~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme ~/.zim/modules/prompt/functions/prompt_P9K_setup
# Add to ~/.zimrc
# zprompt_theme='powerlevel9k'
