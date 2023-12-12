import 'package:flutter/material.dart';

class medicine extends StatelessWidget {
  const medicine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List image = [
      "asset/images/consultation-removebg-preview.png",
      "asset/images/medicines-removebg-preview.png",
      "asset/images/labtests-removebg-preview.png",
      "asset/images/health-removebg-preview.png",
    ];

    List name = ["Consultation", "Medicines", "Lab Tests", "Health"];

    List mainimage = [
      "asset/images/vitamins.png",
      "asset/images/medicine.png",
    ];

    List mainname = [
      "Multi Vitamins",
      "Thayrosafe",
    ];

    List pill = ["90 pills", "180 pills"];

    List price = [
      "\$214",
      "\$342",
    ];

    List lastprice = ["\$287", "\$392"];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 360,
            height: 800,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.notes_sharp,
                      color: Color(0xff2a8c8b),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Online\nPharmacy",
                      style: TextStyle(
                          color: Color(0xffdb6d82),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 250,
                            ),
                            fillColor: Color(0xfff3d2ac),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xff2a8c8b),
                            ),
                            hintText: "Search for Drugs,doctors,etc...",
                            hintStyle: TextStyle(fontSize: 13),
                            focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
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
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shop by Category',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: name.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Color(0xfff3d2ac),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(image[index], scale: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              name[index],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Products',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 260,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: mainname.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 260,
                          width: 170,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xfff3d2ac),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 120),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff2a8c8b),
                                ),
                              ),
                              Center(
                                child: Image.asset("${mainimage[index]}",
                                    width: 90, height: 90),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  mainname[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text("${pill[index]}"),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text("${price[index]}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "${lastprice[index]}",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "asset/images/d39e0298-173f-4462-bd10-029079f781e3-removebg-preview.png",
              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
