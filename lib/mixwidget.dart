import 'package:flutter/material.dart';

import 'List_View_seprated.dart';

class MixWidget extends StatelessWidget {
  const MixWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => Listviewseprated(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 3,
            color: Colors.red,
            height: 0,
            indent: 30,
            endIndent: 30,
          ),
          SizedBox(height: 10),
          CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 35,
            child: Icon(Icons.add),
            backgroundImage: NetworkImage(""),
          ),
          SizedBox(height: 10),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Listviewseprated(),
                ),
              );
            },
          ),
          // Spacer(),
          SizedBox(height: 10),
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
          SizedBox(height: 10),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("A"),
                    SizedBox(width: 10),
                    Text("B"),
                    SizedBox(width: 10),
                    Text("C"),
                    SizedBox(width: 10),
                    Text("D"),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 35,
                child: Icon(Icons.add),
                backgroundImage: NetworkImage(""),
              ),
            ],
          )
          // Expanded(
          //   child: Container(
          //     color: Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
