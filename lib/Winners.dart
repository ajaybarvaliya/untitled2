import 'package:flutter/material.dart';

class Winners extends StatelessWidget {
  Winners({Key? key}) : super(key: key);

  List text1 = ["Walking", 'Cycling', 'Driving', 'Train', 'Hliking', 'Flight'];

  List image1 = [
    'asset/images/walking.png',
    'asset/images/cycling.png',
    'asset/images/driving.png',
    'asset/images/train.png',
    'asset/images/hiking.png',
    'asset/images/flight.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Color(0xffdd466a),
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Satwik Pachino",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.cloud,
                              color: Colors.white,
                            ),
                            Text(
                              "21 c",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Cloudy",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Start a new journey",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              padding: EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          text1[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Image.asset(
                          image1[index],
                          scale: 7,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: 360,
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.grey.shade500,
                  size: 25,
                ),
                Icon(
                  Icons.history,
                  color: Colors.grey.shade500,
                  size: 25,
                ),
                CircleAvatar(
                    radius: 13,
                    backgroundImage:
                        //AssetImage('asset/images/man.png'),
                        NetworkImage(
                            "https://www.koimoi.com/wp-content/new-galleries/2023/01/shah-rukh-khan-helps-a-girl-adjust-her-handbag-melting-the-entire-internet-at-once-netizens-label-him-a-gentleman-watch-01.jpg")),
                Icon(
                  Icons.bar_chart_sharp,
                  color: Colors.grey.shade500,
                  size: 25,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.grey.shade500,
                  size: 25,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
