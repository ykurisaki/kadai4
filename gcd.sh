#!/bin/bash
#最大公約数計算シェル
#1.入力引数チェック
#2.チェックエラーの場合、メッセージ出力（エラー終了させない）
#3.計算関数



#入力パラメーター数チェック
if [ $# -ne 2 ];then
    echo "引数を2個指定してください"
    exit 
fi

#引数1の型チエック
if echo "$1" | grep -q "^[0-9]\+$";then
    echo "1つ目の入力値は:$1"
else
    echo "自然数を入力してくだざい"
    exit 
fi

#引数2の型チェック
if echo "$2" | grep -q "^[0-9]\+$";then
    echo "2つ目の入力値は:$2"
else
    echo "自然数を入力してください"
    exit 
fi

#パラメーターの値が0の場合、0を返す
if [ $1 -eq 0 -o $2 -eq 0 ];then
    echo "最大公約数:0"
    exit 
fi

#変数設定
vara=$1
varb=$2

#最大公約数計算
gcd(){
    while [ $vara -ne $varb  ]
    do
    if [ $vara -gt $varb  ];then
        vara=$(( vara-varb ))
    else
        varb=$(( varb-vara ))
    fi
    done
    echo "最大公約数:$vara"
}

#関数呼び出す
gcd $1 $2
