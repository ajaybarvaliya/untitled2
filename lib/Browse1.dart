import 'package:flutter/material.dart';

class Browse1 extends StatelessWidget {
  Browse1({Key? key}) : super(key: key);

  List fruitimage = [
    "asset/images/lemon-removebg-preview.png",
    "asset/images/pineapple-removebg-preview.png",
    "asset/images/kiwi-removebg-preview.png"
  ];

  List fruitname = ["LEMON", "PINEAPPLE", "KIWI FRUIT"];

  List fruitdetail = ["Fresh juicy oranges", "Sour Pineapple", "Beauty Kiwi"];

  List container = [
    Color(0xfff78e2c),
    Color(0xfffdd446),
    Color(0xfff78e2c),
  ];

  List meatimages = [
    "asset/images/bacon meat.jpg",
    "asset/images/pork_sausage-removebg-preview.png",
    "asset/images/beef_meat-removebg-preview.png"
  ];

  List meatname = ["Selected Bacon Meal", "Pork sausage", "Beef Meat"];

  List price = ["\$57,888", "\$20,000", '\$25,000'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 360,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xffffa823),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(200),
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  constraints: BoxConstraints(
                                      maxWidth: 260, maxHeight: 45),
                                  hintText: "search",
                                  prefixIcon: Icon(Icons.search),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.account_circle_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 50),
                          child: Text(
                            "Browse",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 140,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 300,
                        child: ListView.builder(
                          itemCount: fruitimage.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 190,
                                  width: 150,
                                  margin: EdgeInsets.only(top: 30, left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 100),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${fruitname[index]}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("${fruitdetail[index]}")
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  right: -20,
                                  child: Image.asset(
                                    '${fruitimage[index]}',
                                    scale: 3.5,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 120),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Color(0xffffa823),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Saved",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      "3 items",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: container.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 300,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: container[index],
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "${meatimages[index]}",
                                    ),
                                    scale: 4),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "U.S.A",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${meatname[index]}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Black pork",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text("${price[index]}")
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent.shade100,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xffffa823),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent.shade100,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.orange,
                              ),
                              Text(
                                "Browse",
                                style: TextStyle(color: Colors.orange),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
