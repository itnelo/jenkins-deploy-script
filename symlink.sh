#!/usr/bin/env sh

usage()
{ 
    echo "Usage: $0 -w <string|workspace> -a <string|alias> [-b <number|build number>]" 1>&2; 
    exit 1; 
}

while getopts ":a:w:b:" o; do
    case "${o}" in
        a)
            _alias=${OPTARG}
            ;;
        w)
            _workspace=${OPTARG}
            ;;
        b)
			_build_number=${OPTARG}
			;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${_alias}" ] || [ -z "${_workspace}" ]; then
    usage
fi

echo "creating alias '${_alias}' for build #${_build_number} in workspace '${_workspace}' ..."

if [ ! -d "${_workspace}" ]
then 
    echo "FATAL: workspace directory '${_workspace}' doesn't exists!"
    exit 1;
fi

ln -snf ${_workspace} ${_alias}

echo "done."