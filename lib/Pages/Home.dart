import "dart:convert";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:myapp/Models/Apps.dart';
import "package:myapp/Widgets/Item_widgets.dart";
import "package:myapp/Widgets/drawer.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final str = "Day";
  final days = 1;
  // bool byle = true;
  // double dub = 4.08;------------------------------------
  // we can use var variable aas a data type to define any data type

  final sys = "by codepur";
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogdata =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedata = jsonDecode(catalogdata);
    // ignore: unused_local_variable
    var productsdata = decodedata["products"];
    // ignore: unused_local_variable
    catalougemodel.Items = List.from(productsdata)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    //to reload data
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //we will use these app bar and theme propweerty in main or we can create another file theme,.dart
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(
        //   color: Colors.black,
        // ),

        title: const Text(
          "Welcome to Satta Bazzar",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child:(catalougemodel.Items != null && catalougemodel.Items.isNotEmpty)
            ?  ListView.builder(
          itemCount: catalougemodel.Items.length,
          itemBuilder: (context, index) {
            // You should return a widget for each item in the list here
            return ItemWidget(
              item: (catalougemodel.Items[index]),
              // You can add more widgets here to display other information about the item
            );
          },
        ):Center(child: CircularProgressIndicator(),),
      ),

      // body:Container(
      //   height: 150,
      //   width: 150,
      //   color: Color.fromARGB(255, 39, 185, 146),
      // ),

      drawer: const Mydrawer(),
    );
  }
}
