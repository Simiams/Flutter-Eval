import 'package:epsi_shop/bo/article.dart';
import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  final _items = <Article>[];

  String priceTotalInEuro() =>
      "${_items.fold(0 as num, (itemPrev, item) => itemPrev + item.prix) / 10}€";

  num priceTotal() =>
      _items.fold(0 as num, (itemPrev, item) => itemPrev + item.prix)/10;

  List<Article> get items => _items;

  void addArticle(Article article) {
    _items.add(article);
    notifyListeners();
  }

  void removeArticle(Article article) {
    _items.remove(article);
    notifyListeners();
  }
}
