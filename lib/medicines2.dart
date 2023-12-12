import 'package:flutter/material.dart';

import 'medicines.dart';

class medicines2 extends StatelessWidget {
  const medicines2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mainimage = [
      "asset/images/vitamins.png",
      "asset/images/medicine.png",
      "asset/images/omega-3.png",
      "asset/images/sore capsule.png"
    ];

    List mainname = ["Multi Vitamins", "Thayrosafe", "Omega 3", "Sore Capsule"];

    List pill = ["90 pills", "180 pills", "132 pills", "60 Capsule"];

    List price = ["\$214", "\$342", "\$165", "\$135"];

    List lastprice = ["\$287", "\$392", "\$185", "\$165"];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => medicine(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Color(0xff2a8c8b),
                    ),
                  ),
                  Text(
                    "Medicines",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xff2a8c8b),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   width: 260,
                //   height: 50,
                //   decoration: BoxDecoration(
                //     color: Color(0xfff3d2ac),
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child:
                TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xfff3d2ac),
                    filled: true,
                    constraints: BoxConstraints(maxWidth: 250),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xff2a8c8b),
                    ),
                    hintText: "Search for Drugs,doctors,etc...",
                    hintStyle: TextStyle(fontSize: 13),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                // ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff2a8c8b),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.tune, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              height: 700,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: mainimage.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 280,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xfff3d2ac),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "${mainimage[index]}",
                            height: 100,
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "${mainname[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("${pill[index]}",
                                style: TextStyle(fontSize: 15)),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${price[index]}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${lastprice[index]}",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            SizedBox(
                              height: 23,
                            ),
                            Icon(
                              Icons.favorite_outline,
                              color: Color(0xff2a8c8b),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffdb6d82),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
