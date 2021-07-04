import 'package:flutter/material.dart';
import 'package:myfierstapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Center(child: Text("Hello Dev")),
      ),
    );
  }
}
