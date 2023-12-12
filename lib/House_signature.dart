import 'package:flutter/material.dart';

class Housesignature extends StatelessWidget {
  Housesignature({Key? key}) : super(key: key);

  List color = [
    Color(0xff61c4b0),
    Color(0xffffaef1),
    Color(0xffff9839),
    Color(0xffb88456),
    Color(0xffe84342),
    Color(0xff56b66f),
  ];

  List name = [
    'Expresso',
    'Cafe\nMocha',
    'Caramel\nMacchiato',
    'Turkish\ncoffee',
    'Cappuccino',
    'Affagato'
  ];

  List image = [
    'asset/images/Cappuccino-removebg-preview.png',
    'asset/images/Cafe_Mocha-removebg-preview.png',
    'asset/images/Caramel_Macchiato-removebg-preview.png',
    'asset/images/Turkish_coffee-removebg-preview.png',
    'asset/images/Cappuccino-removebg-preview.png',
    'asset/images/Affagato-removebg-preview.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              image: AssetImage(
                'asset/images/flwr-removebg-preview.png',
              ),
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "House Signature",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "search",
                fillColor: Colors.grey.shade400,
                filled: true,
                constraints: BoxConstraints(maxWidth: 330, maxHeight: 50),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 6,
              padding: EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                name[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Color(0xffa47b82),
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 30),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Image(
                          image: AssetImage(image[index]),
                          height: 130,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: color[index],
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
