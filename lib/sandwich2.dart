import 'package:flutter/material.dart';

class Sandwich2 extends StatelessWidget {
  const Sandwich2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic analysis = [
      {'name': 'WEIGHT', 'numver': '250', 'short': 'G'},
      {'name': 'CALORIES', 'numver': '250', 'short': 'CAL'},
      {'name': 'VITAMINS', 'numver': 'A,B6', 'short': 'V'},
    ];

    List name = ['WEIGHT', 'CALORIES', 'VITAMINS'];

    List number = ['250', '250', 'A,B6'];

    List shortname = ["G", 'CAL', "V"];

    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.reorder_rounded,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 650,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 70,
                            top: 150,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Vegetable",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Sandwich",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "\$24.00",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Container(
                              width: 90,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.teal.shade300,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.remove, color: Colors.white),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Icon(Icons.add, color: Colors.white),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 130,
                        ),
                        Container(
                          height: 80,
                          child: ListView.builder(
                            itemCount: analysis.length,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 150,
                                height: 100,
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text('${name[index]}'),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          '${number[index]}',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("${shortname[index]}")
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade300,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 140,
                              ),
                              Center(
                                child: Text(
                                  "\$72.00",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              SizedBox(width: 100),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -100,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      'asset/images/photo_2023-01-16_10-05-26-removebg-preview.png',
                      width: 250,
                      height: 250,
                    ),
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
