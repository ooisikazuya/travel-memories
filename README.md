## アプリ名
### TRAVEL-MEMORIES

## 概要
TRAVEL-MEMORIESは旅行に関する記録に特化したアプリです。

旅行のしおりを作成できるだけでなく、旅行に必要な経費を管理できる機能もあります。

旅行の計画を立てる際や旅行中、旅行から帰ってきた後にも楽しく使えるアプリになっています。

## アプリを作るきっかけ
普段旅行の計画を立てる際、ホテル代や交通費などをある程度計算して必要なお金を準備しているのですが、実際に旅行先に行った時のお土産代や食費はあまり意識せずにお金を使っていて、何にいくら使ったのかをあまり把握していませんでした。

また、旅行の計画はいつもメモアプリに書いていて旅行から帰るとメモを消していましたが、せっかくなので旅行の思い出も一緒に書いて保存できるものがあればいいなと思っていました。

そこで、お金の管理ができる機能と旅行のしおりが作れる機能をセットにしたアプリを作ってみました。

家族・友人とよく旅行する人にぴったりなアプリだと思います。

## ターゲット
- 旅行の計画を立てることが好きな人
- 旅行の思い出を後で見返して楽しみたい人　
- 旅行に使うお金の管理をきちんとしたい人

## 使い方
- **しおりの作成・閲覧**

![スクリーンショット 2021-05-06 17 19 21](https://user-images.githubusercontent.com/74053238/117269231-11621c00-ae93-11eb-8d3a-4122f0ce158c.png)


旅行のしおりを作成・閲覧することができます。

しおりは決まった書き方がないので、家族・友人だけのオリジナルのしおりを作って楽しんでください。

- **旅費の管理**

![スクリーンショット 2021-05-06 17 49 09](https://user-images.githubusercontent.com/74053238/117269692-7a499400-ae93-11eb-9bca-849f5c058b4d.png)

![スクリーンショット 2021-05-06 17 45 39](https://user-images.githubusercontent.com/74053238/117269868-9f3e0700-ae93-11eb-8207-5dfd9ba3ef84.png)


旅行にかかる必要経費、お土産などの旅行中に使ったお金を記録することができます。

使ったお金を設定した予算から引いて残額を表示してくれるのでわざわざ計算する必要がありません。

さらに、カテゴリー別に使ったお金の合計を円グラフにして表示してくれます。

- **グループ作成・加入**

![スクリーンショット 2021-05-06 17 03 58](https://user-images.githubusercontent.com/74053238/117270032-c5fc3d80-ae93-11eb-80fb-3adfd95ab335.png)

![スクリーンショット 2021-05-06 17 05 08](https://user-images.githubusercontent.com/74053238/117270164-e4facf80-ae93-11eb-9d1e-5a73c29f72ee.png)


グループリーダーとしてグループを作成したり、グループIDを教えてもらってグループに加入することができます。

家族・友人とグループを組んで旅行のしおりを共有できるようにしておきましょう。

- **会員情報**

![スクリーンショット 2021-05-06 17 54 13](https://user-images.githubusercontent.com/74053238/117270441-2d19f200-ae94-11eb-894b-63039baff74c.png)


会員情報の変更、プロフィール画像の選択をすることができます。

プロフィール画像はグループメンバー一覧に表示されます。

## 使用技術
### フロントエンド
- HTML/CSS
- JavaScript/jQuery
- devise
- chartkick
- carrierwave
- mini_magick

### サーバーサイド
- Ruby 2.6.2
- Ruby on Rails 5.2.4.4

### デプロイ
- heroku 7.53.0

  #### URL
  
  https://immense-falls-26161.herokuapp.com

  #### テストユーザー情報
  - ニックネーム  kazu　
  - メールアドレス  ttttt@ttttt
  - パスワード  yyyyyy  
