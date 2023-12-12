import 'package:flutter/material.dart';

class burger2 extends StatelessWidget {
  const burger2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List burgername = [
      "Double Cheese",
      "Beef Burger",
      "Chicken Burger",
    ];

    List burgerimage = [
      "asset/images/download__1_-removebg-preview.png",
      "asset/images/images-removebg-preview (1).png",
      "asset/images/download__3_-removebg-preview.png",
    ];
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
                SizedBox(
                  width: 260,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: Image(
                    image: AssetImage("asset/images/woman.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("CHICKEN BURGER",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Burger KING Delivery. 15000 25",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "asset/images/download__3_-removebg-preview.png",
                  width: 180,
                  height: 180,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text('65.000'),
                            Positioned(
                              top: -6,
                              left: -10,
                              child: Text(
                                "Rp",
                                style: TextStyle(fontSize: 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.white),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: 360,
                height: 430,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                          "Lorem ipsum dolor sit amet.consectetur\nasipiscing edit.Fermentum arcu vitae.libera,proin\nid et eros,turpis pellentesque,Diam nam felis.\nfeugiate eget nibh tellus ullamcorper mattisr\nbibendum.Malesuada adipscing dis tincidunt\nfeugiate eget nibh tellus ullamcorper mattisr"
                          // style: TextStyle(fontSize: 15),
                          ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    // child: Image.asset("${burgerimage[index]}",
                                    //     width: 50, height: 50),
                                  ),
                                  Positioned(
                                    left: -3,
                                    top: 10,
                                    child: Container(
                                      height: 80,
                                      width: 110,
                                      child: Image.asset(
                                        "${burgerimage[index]}",
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${burgername[index]}",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.shade100,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Icon(Icons.remove,
                                          color: Colors.white)),
                                ),
                                Text("2"),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
