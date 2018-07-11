#!/bin/sh

# make sure we exit if the program fails
set -e

readonly PROGNAME=$(tput setaf 6)$(basename $0)$(tput sgr0)
readonly PROGDIR=$(dirname $0)
readonly VERSION="0.1alpha"
readonly ARGS="$@"
#set VERBOSE=0
set CREATE_DIR=0
set REPLACE_FILES=0

_shortUsage() {
	echo "$PROGNAME: usage $PROGNAME -i <type> -o <type> -t <tool> [-c] [ -r] [-y] [-p] [-v] [-a] [-h] $(tput smul)source dir$(tput rmul) $(tput smul)target dir$(tput rmul)\n"
}

_usage() {
	_shortUsage
	cat <<- EOF
	This program converts files recursively from python to go using the same folder structure and base file names.

	OPTIONS:
	   -i | --intype              specify the file extention to convert from (use only the extention, eg. for *.py use py)
	   -o | --outtype             specify the file extention to convert to (use only the extention, eg. for *.py use py)
	   -t | --tool                specify the converter to use (make sure it is on your path or create an alias for it if it needs options)
	   -c | --create              create directory if it does not exist
	   -r | --replace             replace files in target directory
	   -y | --copyother           copy files that do not math the file extention
	   -p | --pretend             do not really convert the files, just how what you are going to do.
	   -l | --loud                show what you are doing
	   -a | --interactive         run the program interactively
	   -h | --help                show this help
	   -v | --version             show the program version
	
	Examples:
	   Run:
	      $PROGNAME  --replace /path/to/source/files /path/to/target/files

	   Just show what you are going to do:
	      $PROGNAME -vp /path/to/source/files /path/to/target/files

	EOF
}

_showVersion() {
	echo "$PROGNAME: Version $VERSION."
}

_echo() {
	if [[ $VERBOSE ]]
then echo "$PROGNAME: $*" >&2; fi
}

_invalidOption() {
	_echo "Invalid option -$1"
}

_duplicateOption() {
	_echo "Option -$1 was used more than once"
}

_requiresArgument() {
	_echo "-$1 requires an argument"
	_shortUsage
	exit 1
}

_requiresDirectory() {
	_echo "A $1 directory is required!"
	_shortUsage
	exit 1
}

_makeDir() {
	mkdir -p "$1"
}

_convertFile() {
	local outfile=$2"/"$(basename ${1//$IN_TYPE/$OUT_TYPE})
	_echo "Converting file: $1..."
	if [[ ! $PRETEND ]]
	 then
		/Users/chris/code/python/src/github.com/gython/Gython/gython.py $1 > $outfile
	else
		echo "$1 \> $outfile"
	fi
}

_copyFile() {
	local outfile=$2"/"$(basename ${1})
	_echo "Copying file to $outfile..."
	if [[ ! $PRETEND ]]
	then
		if [[ ! $REPLACE_FILES ]]
		then
			cp $1 $outfile
			if [[ $? > 0 ]]
			then
				_echo "File already exists! Could not copy the file. Use -r to replace files."
			fi
		else
			cp -f $1 $outfile
			if [[ $? > 0 ]]
			then
				_echo "Could not copy the file! Please check the file for problems."
			fi
		fi
	fi
}

_processFile() {
	# do something
	_echo "~F~ working on $1..."
	if [[ $1 == *.$IN_TYPE ]]
	then
		if [[ ! $REPLACE_FILES ]]
		then
			_echo "Target file already exists. Skipping..."
		else
			_convertFile $1 $(dirname "$2")
		fi
	else
		if [[ $COPY_OTHERS ]]
		then
			_copyFile $1 $(dirname "$2")
		else
			echo "Skipping file..."
		fi
	fi
}

_traverseDirectory() {
	for fileName in `ls $1/`
	do
		if [[ -f $1/$fileName ]]
		then
			_processFile "$1/$fileName" "$2/$fileName"
		fi
		if [[ -d $1/$fileName ]]
		then
			_echo "~D~ Entering directory $1/$fileName..."
			if [[ ! -d $2/$fileName ]]
			then
				if [[ ! $CREATE_DIR ]]
				then
					_echo "Target directory does not exist! Use -c option to automatically create directories."
					_shortUsage
					exit 1
				fi
				_echo "~D~ Creating target directory: $2/$fileName"
				if [[ ! $PRETEND ]]
				then
					_makeDir $2/$fileName
				fi
			fi
			_traverseDirectory "$1/$fileName" "$2/$fileName"
		fi
	done
}

_cmdline() {
	# got this idea from here:
	# http://kirk.webfinish.com/2009/10/bash-shell-script-to-use-getopts-with-gnu-style-long-positional-parameters/
	# echo $FUNCNAME $@
	local arg=
	for arg
	do
#		echo "arg = $arg"
		local delim=""
		case "$arg" in
			#translate --gnu-long-options to -g (short options)
			--intype)         args="${args}-i ";;
			--outtype)        args="${args}-o ";;
			--tool)           args="${args}-t ";;
			--create)         args="${args}-c ";;
			--replace)        args="${args}-r ";;
			--copyother)      args="${args}-y ";;
			--pretend)        args="${args}-p ";;
			--interactive)    args="${args}-a ";;
			--help)           args="${args}-h ";;
			--loud)           args="${args}-l ";;
			--version)        args="${args}-v ";;
			--debug)          args="${args}-d ";;
			--*)              _isNotValidOption "$arg"; usage; exit 1;;
			#pass through anything else
			*) [[ "${arg:0:1}" == "-" ]] || delim="\""
				args="${args}${delim}${arg}${delim} ";;
		esac
	done
	#Reset the positional parameters to the short options
	eval set -- $args

	local PROBLEM=0
	while getopts ":i::o::t::crypahlvd" OPTION
	do
#		echo "OPTION: $OPTION - OPTARG: $OPTARG"
		case $OPTION in
#			d)  if [[ ${OPTARG:1} = "-" ]]; then _requiresArgument "-$OPTION"; fi; readonly DEST_DIR=$OPTARG;;
			i)  if [[ ! $IN_TYPE ]]
				then
					if [[ ${OPTARG:0:1} == "-"  || ${OPTARG:0:1} == "/" || ${OPTARG:0:1} == "~" ]]
					then
						_requiresArgument "$OPTION"
					fi
					readonly IN_TYPE="${OPTARG}"
				else
					PROBLEM=1
					_duplicateOption
				fi;;
			o)  if [[ ! $OUT_TYPE ]]
				then
					if [[ ${OPTARG:0:1} == "-"  || ${OPTARG:0:1} == "/" || ${OPTARG:0:1} == "~" ]]
					then
						_requiresArgument "$OPTION" 
					fi
					readonly OUT_TYPE="${OPTARG}"
				else
					PROBLEM=1
					_duplicateOption
				fi;;
			t)  if [[ ! $TOOL ]]
				then
					if [[ ${OPTARG:0:1} == "-"  || ${OPTARG:0:1} == "/" || ${OPTARG:0:1} == "~" ]]
					then
						_requiresArgument "$OPTION"
					fi
					readonly TOOL="${OPTARG}"
				else
					PROBLEM=1
					_duplicateOption
				fi;;
			c)  if [[ ! $CREATE_DIR ]]
				then
					CREATE_DIR=1
				else
					PROBLEM=1
					_duplicateOption "-$OPTION"
				fi;;
			r)  if [[ ! $REPLACE_FILES ]]
				then
					REPLACE_FILES=1 
				else
					PROBLEM=1
					_duplicateOption "-$OPTION"
				fi;;
			y)	if [[ ! $COPY_OTHERS ]]
				then
					readonly COPY_OTHERS=1
				else
					PROBLEM=1
					_duplicateOption
				fi;;
			p)  if [[ ! $PRETEND ]]
				then
					readonly PRETEND=1
				else
					PROBLEM=1
					_duplicateOption "-$OPTION"
				fi;;
			a)  if [[ ! $INTERACTIVE ]]
				then
					readonly INTERACTIVE=1
				else
					PROBLEM=1
					_duplicateOption "-$OPTION"
				fi;;
			h)  _usage; exit 0;;
			l)  if [[ ! $VERBOSE ]]
				then
					readonly VERBOSE=1
				else
					PROBLEM=1
					_duplicateOption "-$OPTION"
				fi;;
			v)  _showVersion; exit 0;;
			d)  if [[ ! $DEBUG ]]
				then
					readonly DEBUG=1; set -x
				else
					PROBLEM=1
					_duplicateOption "-$OPTION"
				fi;;
			\?) _invalidOption "-$OPTARG"; PROBLEM=1;;
			:)  _requiresArgument "-$OPTARG";;
		esac
	done

	if [[ ! $IN_TYPE ]]
	then
		_echo "You need to specify an input extention type!"
		PROBLEM=1
	fi

	if [[ ! $OUT_TYPE ]]
	then
		_echo "You need to specify an output extention type!"
		PROBLEM=1
	fi

	if [[ ! $TOOL ]]
	then
		_echo "You need to specify the conversion tool!"
		PROBLEM=1
	fi

	if [[ $PROBLEM != 0 ]]
	then
		_shortUsage
		exit 1
	fi

	if [[ $DEBUG ]]
	then
		VERBOSE=1
		exec 2>> convert.log
	fi

	# all arguments completed
	shift $((OPTIND-1))

	if [[ @# < 2 ]]
	then
		_shortUsage
		exit 1
	fi

	local DIRS=( "" "" )
	local _d
	local i=0
	local d=0
	for (( i = 0; i < $#; i++ )); do
		_d=${@:$i+1:1}
		if [[ ${_d:0:1} == "/" || ${_d:0:1} == "~" ]]
		then
			DIRS[$d]=${_d}
			((d++))
		else
			DIRS[$((d-1))]=${DIRS[$((d-1))]}"\\ "${_d}
		fi 
	done

	unset _d
	unset i
	unset d

	SOURCE_DIR=${DIRS[0]}
	TARGET_DIR=${DIRS[1]}
	unset DIRS

	_echo "$PROGNAME: Checking directories..."

	if [[ -d $TARGET_DIR && ! $REPLACE_FILES ]]
	then
		if [[ $CREATE_DIR ]]
		then 
			echo "$PROGNAME: Cannot create directory because it already exists! User -r to replace it." >&2
		else
			echo "$PROGNAME: Target directory already exists! Use -r to replace it." >&2
		fi
		_shortUsage
		exit 1
	fi

	if [[ ! -d $SOURCE_DIR ]]
	then
		echo "$PROGNAME: Source directory does not exist! $SOURCE_DIR" >&2
		_shortUsage
		exit 1
	fi

	if [[ ! -d $TARGET_DIR && ! $CREATE_DIR ]]
	then
		echo "$PROGNAME: Target directory does not exist! $TARGET_DIR" >&2
		echo "$PROGNAME: Use -c to automatically create the directory."
		_shortUsage
		exit 1
	fi

	if [[ -d $SOURCE_DIR ]]
	then
		_echo "$PROGNAME: Source - $SOURCE_DIR"
	fi

	if [[ -d $TARGET_DIR ]]
	then
		_echo "$PROGNAME: Target - $TARGET_DIR"
	fi

	if [[ ! -d $TARGET_DIR && $CREATE_DIR ]]
	then
		_echo "$PROGNAME: Target - $TARGET_DIR (will be created)"
	fi
}

#   [[ "value" == val* ]] shell glob pattern matching for equal
#   [[ "value" != val* ]] shell glob pattern matching for not equal
#
#   [[ -e filepath ]] Returns true if file exists
#   [[ -x filepath ]] Returns true if file exists and is executable
#   [[ -S filepath ]] Returns true if file exists and its a socket file
#
#	[[ -d dirpath ]] Returns true if directory exists
#   [[ -f filepath ]] Returns true if it is a file
#	[[ -z dirpath ]] Returns true if directory is empty
#	[[ -n dirpath ]] Returns true if directory is not empty
#
#	[[ expr -eq expr ]] EQUAL
#	[[ expr -gt expr ]] GREATER THAN
#	[[ expr -eq expr ]] LESS THAN
#
#   [[ expr -a expr ]] Logical AND
#   [[ expr -o expr ]] Logical OR

main() {
	# echo $FUNCNAME $@
	_cmdline $ARGS

	if [[ $INTERACTIVE ]]
	then
		local answer
		printf "$PROGNAME: Do you wish to continue with the conversion? (y/n) "
		read answer
		case ${answer:0:1} in
		    y|Y) echo "$PROGNAME: Continuing...";;
		    *)   echo "$PROGNAME: Cancelled at user's request." >&2; exit;;
		esac
	fi

	_traverseDirectory $SOURCE_DIR $TARGET_DIR
}

main