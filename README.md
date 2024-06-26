# 課題について

基本はstoryboardやxibを使わずにコードでやること

# 課題1

新規プロジェクトを作成してMain.storyboardを削除する

Main.storyboardを読み込む設定を2箇所削除する

Windowを立ち上げてViewControllerを読み込ませる

## 参考
https://github.com/sakiyamaK/NoStoryboardProject

のふたつの画像の設定箇所を消す

# 課題2

セーフエリア内でUITableViewを表示する

標準のUITableViewCellを登録する

100個のセルを表示する

セルが再利用される時にprintでindexPathをログとして出力させる

## 参考
Kadai2TableViewController.swift

# 課題3

課題2のテーブルビューの構造のまま

セルをタップしたらprintでindexPathをログとして出力させる

*ヒント

UITableViewDelegateを設定する

## 参考URL
https://tech.playground.style/swift/tableview-didselectroeat-beginner-alert/#google_vignette

## 参考
Kadai3TableViewController.swift

# 課題4

画面にUIButtonとUITableViewを縦に並べる

UIButtonをタップしたらUITableViewのセルの数がひとつ増えるようにする

*ヒント

セルの数を管理する配列を用意する

UIButtonのタップはaddActionメソッドを使う

addTargetはiOS14以前の古い書き方なので注意

## 参考URL
https://tech.connehito.com/entry/uicontrol-addaction

## 参考
Kadai4TableViewController.swift

# 課題5

課題4のテーブルビューの構造のまま

UITableViewCellを継承したCenterNumberTableViewCellクラスを用意する

CenterNumberTableViewCellは高さが100でセルの真ん中にindexPath.itemの数値が表示されるようにする

*ヒント

UITableViewCellを継承したクラスは総称してカスタムセルと呼んだりする

カスタムセルにレイアウトを貼る時は`UITableViewCell.contentView`の上に貼る

`override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)`内にコードでレイアウトを書く

セルの高さの制約を入れる場合、bottomの`priority`を`UILayoutPriority.required`以外にする

## 参考URL
https://turedureengineer.hatenablog.com/entry/2018/12/06/170045#%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%84%E3%81%A6%E3%81%84%E3%81%8F

## 参考
Kadai5TableViewController.swift


# 課題6

課題5のテーブルビューの構造のままセルをタップしたらDetailViewControllerへ遷移する

DetailViewControllerはテーブルビューでタップしたセルのindexPath.itemを画面の真ん中に出す

*ヒント

画面遷移はUINavigationControllerを使うことを忘れないようにする


## 参考
Kadai6TableViewController.swift
