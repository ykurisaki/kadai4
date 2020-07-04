#!/bin/bash

#echo "2個の整数を入力してください"
#read str1 str2

if [ $# -ne 2 ]; then 		# 2個でない場合
echo "$#個の引数が入力されています。引数の数が不正です。" 	# エラーメッセージ
exit 1 # 終了ステータス
fi

expr $1 + $2 > /dev/null 2>&1 	# 数字以外の入力の場合
if [ $? -ge 2 ]; then 		
echo "$1と$2が入力されました。2個の整数を入力してください" 	# エラーメッセージ
exit 1 		# 終了ステータス
fi

echo "$1と$2の最大公約数は↓" 
yes $1 $2 | awk '{print $1/NR RS $2/NR}' | grep -Fv --line-buffered . | awk 'a[$1]++{print;exit}'
