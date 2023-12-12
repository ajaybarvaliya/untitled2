import 'package:flutter/material.dart';

class ourmenu1 extends StatelessWidget {
  const ourmenu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List iconimage = [
      'asset/images/croissant.png',
      'asset/images/three-rolls.png',
      'asset/images/sushi.png',
      'asset/images/salad.png',
      'asset/images/soup.png'
    ];
    List nameimage = ['Breakfast', 'Sets', 'Sushi', 'Salad', 'soup'];

    List mainimage = [
      'asset/images/cheese pancakes.jpg',
      'asset/images/photo_2023-01-18_08-10-44.jpg',
      'asset/images/download (6).jpg',
    ];

    List name = ["Cheese Pancakes", "Toast with Ham", "Idli Sambar "];

    List price = ["\$4,29", '\$3,28', '\$3,00'];

    List Sale = ["Sale", "New", "New"];

    List salenon = ['\$4,89 • ', '', ''];

    List weight = ['140g', '120g', '130g'];
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Column(
        children: [
          Container(
            height: 680,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 330),
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Our manu',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text('in the resturant on'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Nevsky Prospekt 42",
                          style: TextStyle(color: Colors.green.shade500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 150,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: List.generate(
                            5,
                            (index) => Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Image.asset(
                                    '${iconimage[index]}',
                                  ),
                                ),
                                Text(
                                  "${nameimage[index]}",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '3 items',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 340,
                      width: 300,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${mainimage[index]}",
                                      ),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: index == 0
                                              ? Colors.orangeAccent.shade100
                                              : Colors.green.shade100),
                                      child: Center(
                                        child: Text(
                                          Sale[index],
                                          style: TextStyle(
                                              color: index == 0
                                                  ? Colors.orangeAccent.shade700
                                                  : Colors.green.shade700),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${name[index]}",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${price[index]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          salenon[index],
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        Text(weight[index])
                                      ],
                                    ),
                                  ],
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
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'asset/images/bell.png',
                height: 19,
                width: 19,
                color: Colors.white,
              ),
              Image.asset(
                'asset/images/book.png',
                height: 25,
                width: 25,
                color: Colors.green.shade500,
              ),
              Icon(Icons.menu, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
