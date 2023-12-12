// import 'package:flutter/material.dart';
//
// class Listgenerate extends StatelessWidget {
//   Listgenerate({Key? key}) : super(key: key);
//
//   List color = [
//     Colors.red,
//     Colors.green,
//     Colors.orange,
//     Colors.blue,
//     Colors.indigoAccent,
//     Colors.yellow,
//     Colors.grey,
//     Colors.purple,
//     Colors.pink,
//     Colors.brown,
//   ];
//
//   List text = [
//     "A",
//     "B",
//     "C",
//     "D",
//     "E",
//     "F",
//     "G",
//     "H",
//     "I",
//     "J",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: List.generate(
//                   10,
//                   (index) => Container(
//                     height: 100,
//                     width: 100,
//                     child: Center(
//                       child: Text(
//                         text[index],
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 30,
//                         ),
//                       ),
//                     ),
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                     decoration: BoxDecoration(
//                       color: color[index],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Container(
//                 width: 360,
//                 height: 700,
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: List.generate(
//                       10,
//                       (index) => Container(
//                         height: 100,
//                         width: 100,
//                         child: Center(
//                           child: Text(
//                             text[index],
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 30,
//                             ),
//                           ),
//                         ),
//                         margin: EdgeInsets.symmetric(vertical: 10),
//                         decoration: BoxDecoration(
//                           color: color[index],
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ListGenerateWidget extends StatelessWidget {
  const ListGenerateWidget({Key? key}) : super(key: key);

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
      "maulik"
    ];
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            userdata.length,
            (index) => Container(
              margin: EdgeInsets.all(10),
              width: 300,
              height: 50,
              color: Colors.red,
              child: Text("${userdata[index]}"),
            ),
          ),
        ),
      ),
    );
  }
}
