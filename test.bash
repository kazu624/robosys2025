#!/bin/bash
# SPDX-FileCopyrightText: 2025 Kazuki Nakagawa
# SPDX-License-Identifier: BSD-3-Clause

# テスト対象の設定
TARGET="./ascii_original"
chmod +x $TARGET

errors=0

echo "--- Starting Enhanced Tests ---"

# テスト1: 基本的な文字列
ACTUAL=$(echo "TEST" | $TARGET)
EXPECTED_SNIPPET="ttttt eeeee  ssss"
if [[ "$ACTUAL" == *"$EXPECTED_SNIPPET"* ]];
then
    echo "OK: Word 'TEST' passed."
else
    echo "NG: Word 'TEST' failed."
    errors=$((errors + 1))
fi

# テスト2: 数字の入力確認
ACTUAL_NUM=$(echo "123" | $TARGET)
if [[ "$ACTUAL_NUM" == *"  1    222   333 "* ]];
then
    echo "OK: Numbers '123' passed."
else
    echo "NG: Numbers '123' failed."
    errors=$((errors + 1))
fi

# テスト3: 未定義文字によるエラー終了
if echo "!" | $TARGET 2> /dev/null;
then
    echo "NG: Failed to exit with error for unsupported char '!'."
    errors=$((errors + 1))
else
    echo "OK: Failed as expected for unsupported char '!'."
fi

# テスト4: 入力なしによるエラー終了
if echo -n "" | $TARGET 2> /dev/null;
then
    echo "NG: Failed to exit with error for empty input."
    errors=$((errors + 1))
else
    echo "OK: Failed as expected for empty input."
fi

echo "--- Tests Completed ---"

if [ $errors -ne 0 ];
then
    echo "Total failures: $errors"
    exit 1
fi

echo "All tests passed successfully."
exit 0

#-このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
#-© 2025 Kazuki Nakagawa
