import 'package:flutter/material.dart';

class Venus1 extends StatelessWidget {
  Venus1({Key? key}) : super(key: key);

  List name = ["Recommend", "Black tea", "Green tea", "Milky"];

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

  List cofeecolor = [
    Color(0xffe9db94),
    Color(0xffc59e5b),
    Color(0xffffe4e4),
  ];

  List coffeimage = [
    "asset/images/cappucci-removebg-preview.png",
    "asset/images/cafe_latte-removebg-preview.png",
    "asset/images/bruch_coffee-removebg-preview.png"
  ];

  List coffeename = [
    "Cappucci",
    "Cafe Lattle",
    "Brunch coffee",
  ];

  List price = ["24", "32", '10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Venus",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.message_outlined)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Lemonade",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  constraints: BoxConstraints(maxWidth: 340, maxHeight: 50),
                  fillColor: Colors.grey.shade200,
                  filled: true),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 20,
            child: ListView.builder(
              itemCount: name.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "${name[index]}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            child: ListView.builder(
              itemCount: teacolor.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 140,
                  width: 100,
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: teacolor[index],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: AssetImage(
                          "${teaimage[index]}",
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "${teaname[index]}",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Will buy",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            //height: 400,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  width: 340,
                  // color: Colors.orange,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "${coffeimage[index]}",
                              ),
                              scale: 7),
                          color: cofeecolor[index],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${coffeename[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Signature product",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "¥",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "${price[index]}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 100,
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
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 85),
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
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
          ),
        ],
      ),
    );
  }
}
