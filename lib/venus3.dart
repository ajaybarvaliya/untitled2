import 'package:flutter/material.dart';

class Venus3 extends StatelessWidget {
  const Venus3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List teacolor = [
      Color(0xff9fc745),
      Color(0xffc1d154),
      Color(0xffcbdb57),
    ];
    List teaimage = [
      "asset/images/Green_tea-removebg-preview (1).png",
      "asset/images/jasmin_tea-removebg-preview (1).png",
      'asset/images/rose_tea-removebg-preview (1).png',
    ];
    List teaname = ["Green tea", "Jasmine tea", "Rose tea"];
    List price = ["¥36", "¥24", '¥26'];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Icon(
                Icons.more_horiz,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Text(
              "Shoping cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              "A total of 3 Pieces",
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ),
          Container(
            height: 450,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  //width: 330,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: teacolor[index],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset(
                            "${teaimage[index]}",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${teaname[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Signature product",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "${price[index]}",
                              style: TextStyle(
                                  color: Color(0xff9fc745),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.grey.shade400,
                            size: 18,
                          ),
                          Text(
                            "1",
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          Icon(
                            Icons.remove,
                            color: Colors.grey.shade400,
                            size: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Color(0xff9fc745),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Total",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "¥",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      "110",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 2,
            height: 30,
          ),
          Container(
            height: 80,
            //color: Colors.lightGreen,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 85),
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 95),
                    Text(
                      "My",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
