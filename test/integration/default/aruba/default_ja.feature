# language: ja
# http://qiita.com/sawanoboly/items/48fe830d2ee3b6c87bf5

機能: HTTPサーバ
  HTTPサーバから応答を受け取る

シナリオ: HTTPリクエスト
  前提: HTTPで localhost にリクエストする
  ならば: 応答ステータスが 200 だ
