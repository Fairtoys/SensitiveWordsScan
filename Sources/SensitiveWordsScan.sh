#!/bin/bash

dir=${1?please input a dir to search!}
sentstiveWordsFile=${2:-./sensitive_words.txt}
# ls $dir

if [[ ! -e $sentstiveWordsFile ]]; then
	echo "[scan] ${sentstiveWordsFile} not exsit!"
	exit 0
fi

if [[ ! -d $dir ]]; then
	echo "[scan] error, ${dir} not a dir"
	exit 0
fi

echo "[scan] start scan dir ${dir}, sentstive words file ${sentstiveWordsFile}"

grep -f ${sentstiveWordsFile} -r ${dir}


echo "[scan] end scan"