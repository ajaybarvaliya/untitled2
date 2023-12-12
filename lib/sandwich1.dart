import 'package:flutter/material.dart';

class Sandwich1 extends StatelessWidget {
  Sandwich1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mainimage = [
      "asset/images/photo_2023-01-16_10-05-26-removebg-preview.png",
      'asset/images/photo_2023-01-16_09-27-42-removebg-preview.png'
    ];

    List mainimagemane = ['Vegetable Sandwich', 'Salmon Bowl'];
    List mainprice = ["\$24.00", '\$26.00'];

    List image = [
      "asset/images/photo_2023-01-16_09-28-06-removebg-preview.png",
      "asset/images/photo_2023-01-16_09-28-00-removebg-preview.png",
      "asset/images/photo_2023-01-16_09-27-51-removebg-preview.png",
    ];

    List imagename = ["Beef Bowl", "Beef and Egg Bowl", "Fruit Bowl"];
    List price = ["\$25.00", "\$27.00", "\$20.00"];

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.more_vert,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.reorder_rounded,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 4, spreadRadius: 2),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.orange,
                      ),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Your Favorites",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),
              SizedBox(height: 20),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mainimage.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 260,
                          width: 170,
                          margin: EdgeInsets.only(left: 10, top: 60, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.teal.shade300,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              Center(
                                child: Text(
                                  "${mainimagemane[index]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Text(
                                    "4.3(405)",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "${mainprice[index]}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add",
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: -00,
                          child: Image.asset(
                            '${mainimage[index]}',
                            width: 140,
                            height: 140,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: List.generate(
                          3,
                          (index) => Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 80,
                                width: 240,
                                margin: EdgeInsets.only(
                                  left: 15,
                                  top: 18,
                                ),
                                decoration:
                                    BoxDecoration(color: Colors.teal.shade300),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 55),
                                      child: Text(
                                        "${imagename[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 55),
                                      child: Text("${price[index]}"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 150),
                                      child: Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left: -30,
                                top: 12,
                                child: Image.asset("${image[index]}",
                                    height: 90, width: 90),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
