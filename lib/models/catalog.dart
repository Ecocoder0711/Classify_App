import 'package:classify/models/item.dart';

class CatalogModel {

  static List<Item> items = [];

  
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id,);
  Item getByPosition(int pos) => items[pos];
}