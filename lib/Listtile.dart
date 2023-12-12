import 'package:flutter/material.dart';

class ListTileDemo extends StatefulWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  State<ListTileDemo> createState() => _ListTileDemoState();
}

class _ListTileDemoState extends State<ListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          10,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("kishan"),
              contentPadding: EdgeInsets.symmetric(horizontal: 50),
              horizontalTitleGap: 20,
              textColor: Colors.red,
              focusColor: Colors.green,
              minVerticalPadding: 0,
              tileColor: Colors.blue.shade200,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              // minLeadingWidth: 20,
              subtitle: Text("khunt"),
              trailing: Icon(Icons.edit),
            ),
          ),
        ),
      ),
    );
  }
}
