import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [Icon(Icons.search)],
      ),
      drawer: Drawer(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          color: Colors.red,
          alignment: Alignment.bottomRight,
          child: Center(child: Text("Hello")),
        ),
      ),
    );
  }
}
