



import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 2),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text("hello"),
            ],
          );
        },
      ),
    );
  }
}
