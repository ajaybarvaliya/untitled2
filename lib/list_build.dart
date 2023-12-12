// import 'package:flutter/material.dart';
//
// class Listbuild extends StatelessWidget {
//   Listbuild({Key? key}) : super(key: key);
//
//   List colorlist = [
//     Colors.red,
//     Colors.green,
//     Colors.grey,
//     Colors.blue,
//     Colors.orange,
//     Colors.indigoAccent,
//     Colors.purple,
//     Colors.brown,
//     Colors.yellow,
//     Colors.blueGrey,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 10,
//                 physics: BouncingScrollPhysics(),
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     height: 100,
//                     width: 100,
//                     color: colorlist[index],
//                     margin:
//                         EdgeInsets.symmetric(vertical: 20, horizontal: 350 / 3),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ListviewBuilderWidget extends StatelessWidget {
  const ListviewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List userdata = [
      "kishan",
      "het",
      "krishang",
      "raj",
      "bhautik",
      "mohit",
      "shyamal",
      "ajay",
      "ketul",
      "maulik",
      "mohit",
      "shyamal",
      "ajay",
      "ketul",
      "maulik",
      "mohit",
      "shyamal",
      "ajay",
      "ketul",
      "maulik",
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: userdata.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            height: 50,
            width: 300,
            child: Text('${userdata[index]}'),
          );
        },
      ),
    );
  }
}
