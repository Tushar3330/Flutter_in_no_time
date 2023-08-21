// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_declarations

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://media.licdn.com/dms/image/D4D03AQGDtKr34puiew/profile-displayphoto-shrink_800_800/0/1687256274525?e=1698278400&v=beta&t=x_bImkXTTY6kPcZDQhWjU0Yz4NpCRS_SzjDAX9CSIqU";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 212, 6, 6),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 6, 6),
                    ),
                    accountName: Text("Vaibhav Juari"),
                    accountEmail: Text("vbtjhatoo@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageurl),
                    ))),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Color.fromARGB(255, 246, 242, 242),
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(255, 246, 242, 242),
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.chart_bar_square_fill,
                color: Color.fromARGB(255, 246, 242, 242),
              ),
              title: Text(
                "Standing",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.creditcard,
                color: Color.fromARGB(255, 246, 242, 242),
              ),
              title: Text(
                "Payment",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Color.fromARGB(255, 246, 242, 242),
              ),
              title: Text(
                "Shopping",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
