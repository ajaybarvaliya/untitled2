import 'package:flutter/material.dart';

class Hisajan2 extends StatelessWidget {
  Hisajan2({Key? key}) : super(key: key);

  List color1 = [
    Color(0xfff3ffe9),
    Color(0xfffef9e6),
    Color(0xffeffdfe),
  ];

  List color2 = [
    Color(0xffd6f2b8),
    Color(0xffffe1ac),
    Color(0xffc9ecff),
  ];

  List text1 = ["Mento Contents", "Mento Design", "Delta App Design"];
  List text2 = [
    "Today,Shared by-sajan",
    'Yesterday,Shared by-Red',
    '05.11.2020,Shared by,Ray'
  ];
  List text3 = ["40%", "10%", "20%"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_sharp),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'App',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "asset/images/flame.png",
                    scale: 25,
                  ),
                  Spacer(),
                  Image(
                    image: AssetImage('asset/images/man.png'),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 190,
              decoration: BoxDecoration(
                color: Color(0xff8085f7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "asset/images/watch-removebg-preview.png",
                    color: Colors.white,
                    scale: 5,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "On progrress\n70% Done",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xfffff0eb),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Notification",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("On")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xfffdc3b6),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                          backgroundColor: Colors.white, radius: 10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Files",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xff8085f7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: color1.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: color1[index],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset('asset/images/folder.png',
                            color: color2[index], scale: 8),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              text1[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              text2[index],
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 13),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "asset/images/man.png",
                                  scale: 35,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 5,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade300),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 5,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: color2[index],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  text3[index],
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
