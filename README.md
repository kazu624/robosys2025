# アスキーアートコマンド

[![test](https://github.com/kazu624/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/kazu624/robosys2025/actions)
## 概要
標準入力から受け取った文字列を、「アスキーアート」として出力する。

## テスト環境
- Python 3.10
- Ubuntu 22.04.5 LTS

## 使用準備
以下のコマンドをターミナル上で実行してください。

```bash
# リポジトリをクローン
git clone [https://github.com/kazu624/robosys2025](https://github.com/kazu624/robosys2025)

# ディレクトリに移動
cd robosys2025

# ファイルがあるか確認
ls

# 実行権限を付与
chmod +x ascii
```

## 実行方法
出力したいアルファベット、数字またはスペース（空白）を" "内に入力する。（入力する文字は半角文字）
- アルファベット、数字、スペース（空白）を入力した場合
```
echo "abc 123" | ./ascii
```
実行結果
```
 aaa  bbbb   cccc         1    222   333
a   a b   b c            11   2   2 3   3
aaaaa bbbb  c             1      2    33
a   a b   b c             1     2   3   3
a   a bbbb   cccc        111   2222  333
```
- アルファベット、数字、スペース（空白）以外が入力された場合
```
echo "+" | ./ascii
```
実行結果
```
Error: Unsupported character: '+'
```
エラーが出力され、原因となった文字が指摘される

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2025 Kazuki Nakagawa

## 参考資料
本READMEの構成や形式は、mooto2525氏の [robosys2024/README.md](https://github.com/mooto2525/robosys2024/blob/main/README.md) を参考にさせていただきました。
