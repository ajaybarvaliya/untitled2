import 'package:flutter/material.dart';

class medicines3 extends StatelessWidget {
  const medicines3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3d2ac),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    color: Color(0xff2a8c8b),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xff2a8c8b),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "asset/images/vitamins.png",
            width: 190,
            height: 190,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 330,
            height: 460,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Multi VitaminS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("90 pills"),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              Icon(Icons.star_border,
                                  color: Colors.orangeAccent),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "4.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xffdb6d82), width: 3),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Color(0xffdb6d82),
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xffdb6d82), width: 3),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Color(0xffdb6d82),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Product Detail",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Multivitamins are used to provide vitamins\nthat are not taken in through the diet\nMultivitamins are also used to treat vitamin\ndeficiencies caused by illness. pregnancy and\nmany other conditions.",
                    style: TextStyle(height: 1.6),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "\$217",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$287",
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffdb6d82),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.favorite_border, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Color(0xff2a8c8b),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add to Basket",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
