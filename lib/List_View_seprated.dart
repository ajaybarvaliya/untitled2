import 'package:flutter/material.dart';

class Listviewseprated extends StatelessWidget {
  const Listviewseprated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 50,
            minWidth: 300,
            child: Text(
              "Click",
              style: TextStyle(color: Colors.white),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.indigoAccent,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Listviewseprated(),
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  color: Colors.green,
                );
              },
              separatorBuilder: (contex, index) {
                return Divider(
                  thickness: 2,
                  color: Colors.red,
                  // height: 2,
                );
              },
              itemCount: 115),
        ],
      ),
    );
  }
}
