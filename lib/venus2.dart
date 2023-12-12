import 'package:flutter/material.dart';

class Venus2 extends StatelessWidget {
  const Venus2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9fc745),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Text(
              "Green tea",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              "Signature Product",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 60),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Text(
                  "36",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                Positioned(
                  left: -10,
                  child: Text(
                    "¥",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 540,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 60),
                        child: Text(
                          "Particulars",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "The specialty of this shop is fresh cream ice cream\nwith a full cup of tea.ice drink is more delicious\nsummer mustbe you",
                          style: TextStyle(fontSize: 13, height: 1.3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xff9fc745),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff9fc745),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff9fc745),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff9fc745),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff9fc745),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen.shade100,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Image(
                                  image: AssetImage(
                                    "asset/images/measuring-cup.png",
                                  ),
                                  height: 50,
                                  width: 50,
                                  color: Color(0xff9fc745),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "500ml",
                                  style: TextStyle(
                                    color: Color(0xff9fc745),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen.shade100,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Image(
                                  image: AssetImage(
                                    "asset/images/snowflake.png",
                                  ),
                                  height: 50,
                                  width: 50,
                                  color: Color(0xff9fc745),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Less ice",
                                  style: TextStyle(
                                    color: Color(0xff9fc745),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen.shade100,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Image(
                                  image: AssetImage(
                                    "asset/images/sugar-cube.png",
                                  ),
                                  height: 50,
                                  width: 50,
                                  color: Color(0xff9fc745),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Sugar",
                                  style: TextStyle(
                                    color: Color(0xff9fc745),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "Service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Bussinesses give it away for free\nMinus 2 yuan for every 30 yuan of goos",
                          style: TextStyle(fontSize: 13, height: 1.3),
                        ),
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.shade200,
                        thickness: 2,
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          // color: Colors.lightGreen,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.note_alt_outlined,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey.shade400,
                                ),
                                Container(
                                  height: 60,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xff9fc745),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Purchased",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -190,
                  right: -70,
                  child: Image(
                    image: AssetImage(
                      "asset/images/Green_tea-removebg-preview (1).png",
                    ),
                    height: 300,
                    width: 300,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
