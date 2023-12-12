import 'package:flutter/material.dart';

class ColumneWidget extends StatelessWidget {
  const ColumneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodeLine"),
        actions: [Icon(Icons.account_circle)],
      ),
      drawer: Drawer(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.white,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
          ),
        ],
      ) ,
    );
  }
}
