// メモモデル
class StockMemo {
  int id;
  String name; // 銘柄名
  String code; // 証券コード
  String market; // 市場
  String memo; // メモ
  String createdAt; // 登録日時
  String updatedAt; // 更新日時

  StockMemo(
    this.name,
    this.code,
    this.market,
    this.memo,
    this.createdAt,
    this.updatedAt,
  );
  StockMemo.withId(
    this.id,
    this.name,
    this.code,
    this.market,
    this.memo,
    this.createdAt,
    this.updatedAt,
  );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['code'] = code;
    map['market'] = market;
    map['memo'] = memo;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;

    return map;
  }

  StockMemo.fromMapObject(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.code = map['code'];
    this.market = map['market'];
    this.memo = map['memo'];
    this.createdAt = map['createdAt'];
    this.updatedAt = map['updatedAt'];
  }
}
