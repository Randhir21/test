import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Randhir Pratap Singh"),
              accountEmail: Text("rps85071@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FElon_Musk&psig=AOvVaw0VoBe8thA9CBx8s47OTAtK&ust=1625492049773000&source=images&cd=vfe&ved=2ahUKEwiDx_vyw8nxAhUVv2MGHS4XAiwQjRx6BAgAEA8'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
