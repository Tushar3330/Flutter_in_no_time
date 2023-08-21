// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/Models/Apps.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null), // Change Item to item here
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 27, 223, 53),
      elevation: 1.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(
          item.name,
          textScaleFactor: 1.3,
        ),
        subtitle: Text(
          item.descr,
          textScaleFactor: 1.2,
        ),
        trailing: Text(
          "\$${item.price}",
          
          textScaleFactor: 1.6,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
