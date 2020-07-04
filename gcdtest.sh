#!/bin/bash

#実行結果(2と４を入力した場合)
./gcd.sh 2 4 > /tmp/result-$$
echo 2 > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#実行結果(3を入力した場合)
./gcd.sh 3 > /tmp/result-$$
echo "エラー" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#実行結果(文字を入力した場合)
./gcd.sh a b> /tmp/result-$$
echo "エラー" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "正常"
