# 『WEB+DB PRESS Vol.119』「Dockerで実現！効率的で高速な開発環境」ソースコード

　このリポジトリでは『WEB+DB PRESS Vol.119』に掲載された記事「Dockerで実現！効率的で高速な開発環境」で説明した環境構築用のソースコードを掲載しています。

# このレポジトリの見方

　本レポジトリはコミット順と記事の説明が概ね対応するようにコミットをしています。
なので、[コミット履歴](https://github.com/IkezoeMakoto/web-db-press-3-sample/commits/master) を見ながら実際のコードの変更順と対応させながら記事を読んでいただけますと、わかりやすいかと思います。


# 軽量イメージ alpine を使った際のサイズ比較

　本誌では分量の関係上、掲載できませんでしたが、alpine版に書き換えた際のベースイメージの比較をおいておきます。

## default版

　合計: 1177MB

```
$ docker-compose images
           Container                      Repository            Tag       Image Id       Size  
-----------------------------------------------------------------------------------------------
web-db-press-3-sample_app_1        web-db-press-3-sample_app   latest   77253f0201d9   463.3 MB
web-db-press-3-sample_database_1   mysql                       8        7bb2586065cd   477 MB  
web-db-press-3-sample_kvs_1        redis                       6        84c5f6e03bf0   104.2 MB
web-db-press-3-sample_web_1        web-db-press-3-sample_web   latest   84cb920733b4   132.5 MB
```

## alpine版

　合計: 633.02MB

`633.02/1177=0.5378`　→　約53%(47%の削減) 

```
$ docker-compose images
           Container                      Repository             Tag        Image Id       Size  
-------------------------------------------------------------------------------------------------
web-db-press-3-sample_app_1        web-db-press-3-sample_app   latest     bf96ad5924e4   101.8 MB
web-db-press-3-sample_database_1   mysql                       8          7bb2586065cd   477 MB  
web-db-press-3-sample_kvs_1        redis                       6-alpine   bd71e6db4a54   32.17 MB
web-db-press-3-sample_web_1        web-db-press-3-sample_web   latest     6c89a52ae3c4   22.05 MB
```
