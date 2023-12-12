import 'package:flutter/material.dart';

class burger1 extends StatelessWidget {
  const burger1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List assetimage = [
      "asset/images/noodles.png",
      "asset/images/burger.png",
      "asset/images/cupcake.png",
      "asset/images/cocktail.png"
    ];

    List burgername = ["Chicken", "Double"];

    List burgername1 = ["Burger", "Cheese"];

    List price = ["65.000", "85.000"];

    List burgerimage = [
      "asset/images/photo_2023-01-12_16-39-29-removebg-preview.png",
      "asset/images/photo_2023-01-12_16-42-02-removebg-preview.png"
    ];

    List text = ["Noodles", "Burger", "Desert", "Drink"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 360,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Icon(Icons.menu, color: Colors.white),
                            SizedBox(
                              width: 280,
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Center(
                                child: Image.asset("asset/images/woman.png",
                                    height: 60, width: 60),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Barvaliya's",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Container(
                                  width: 30,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "vip",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              "576.500",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "139",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              "5",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              "24",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 75),
                          child: Row(
                            children: [
                              // SizedBox(width: 0),
                              Text(
                                "Buy",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                "Voucher",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "Alms",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Positioned(
                  bottom: -30,
                  left: 30,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What do you want to eat?",
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                        ),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.only(left: 10),
                        constraints: BoxConstraints.loose(
                          Size.fromWidth(250),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: assetimage.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 3,
                            )
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Image.asset('${assetimage[index]}',
                              height: 30, width: 30),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('${text[index]}')
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "${burgername[index]}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Text(
                                "${burgername1[index]}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              SizedBox(
                                height: 140,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text(
                                        "${price[index]}",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      Positioned(
                                        top: -5,
                                        left: -5,
                                        child: Text(
                                          'Rp',
                                          style: TextStyle(
                                              fontSize: 8, color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    child: Icon(Icons.add),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: -30,
                        child: Image.asset(
                          "${burgerimage[index]}",
                          width: 200,
                          height: 150,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.bookmark,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.article,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    height: 50,
                    width: 40,
                    child: Icon(Icons.home, color: Colors.white),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
