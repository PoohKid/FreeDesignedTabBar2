# FreeDesignedTabBar
*UITabBarのデザインを自由に行うサンプルです。*
UITabBarの上に任意のViet(今回はUIImageViewを継承したクラス)をaddSubViewして重ねる方式です。  
上に重ねたビューが描画もイベントも担当します。  
ビューコントローラの切り替え部分をUITabBarControllerに担当してもらいます。

## 参考
[fladdict » iPhoneのUIのスキンをカスタマイズする場合のメモ](http://fladdict.net/blog/2011/08/iphone-skinning.html)

**機能をのっとる系**
* コンポーネントの上にUIView/UIButtonを貼付け、delegateの内容をそのままもらって描画

の方法を採用しました。