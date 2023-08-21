import 'package:flutter/foundation.dart';

class catalougemodel {
  static  List<Item> Items = [
  ];
}

class Item {
  final int id;
  final String name;
  final String descr;
  final String color;
  final num price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.descr,
    required this.color,
    required this.price,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      descr: map["descr"],
      color: map["color"],
      price: map["price"],
      image: map["image"],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "descr": descr,
        "color": color,
        "price": price,
        "image": image,
      };
}
