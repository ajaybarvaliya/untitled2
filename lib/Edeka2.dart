import 'package:flutter/material.dart';

import 'Edeka1.dart';

class Edeka2 extends StatefulWidget {
  Edeka2({Key? key}) : super(key: key);

  @override
  State<Edeka2> createState() => _Edeka2State();
}

class _Edeka2State extends State<Edeka2> {
  List name1 = [
    'Fast Delivery',
    'Stores in my area',
    'Previous Orders',
    'Popular Orders'
  ];

  List icon = [
    Icons.airport_shuttle,
    Icons.location_on,
    Icons.list_alt,
    Icons.star_border,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Edeka1(),
                        ),
                      );
                    }),
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 17,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green.shade200,
                        radius: 25,
                        child: Icon(icon[index], color: Colors.green),
                      ),
                      title: Text(
                        name1[index],
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.circle_outlined),
                      iconColor: Colors.green,
                    ),
                    Divider(
                      endIndent: 20,
                      indent: 20,
                      thickness: 1,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
