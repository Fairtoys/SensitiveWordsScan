#!/bin/bash

dir=${1?please input a dir to search!}
sentstiveWordsFile=${2:-./sensitive_words.txt}
# ls $dir

if [[ ! -e $sentstiveWordsFile ]]; then
	echo "${sentstiveWordsFile} not exsit!"
	exit 0
fi

echo "[scan] start scan dir ${dir}, sentstive words file ${sentstiveWordsFile}"

if [[ ! -d $dir ]]; then
	echo "[scan] error, ${dir} not a dir"
	exit 0
fi

grep -f ${sentstiveWordsFile} -r ${dir}


echo "[scan] end scan"