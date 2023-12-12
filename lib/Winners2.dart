import 'package:flutter/material.dart';

class Winners2 extends StatelessWidget {
  Winners2({Key? key}) : super(key: key);

  List text1 = ["1", '2', '3', '4'];

  List text2 = ["Peter Parker", "Tony Stark", "John Carter", "Reeta Chainani "];

  List text3 = ["7400 Pts", "6500 Pts", '5800 Pts', '5400 Pts'];

  List image1 = [
    "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/tom-holland-robert-downey-jr_0.jpg",
    "https://wellgroomedgentleman.com/media/images/Tony_Stark_Beard_with_Quiff_Hairstyle.width-800.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/pp_johncarter_herobanner_mobile_19880_b14f099c.jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8_rogCTpUgxopGCkZMrIjolokrm9Vi5aPFQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xff1e1779),
              gradient: LinearGradient(
                colors: [
                  Color(0xff1e1779),
                  Color(0xff1e1779),
                  Color(0xff1e1779),
                  Color(0xff712f91),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Winners",
                          style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Friends",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          Icons.person_add_alt_1,
                          color: Colors.white,
                          size: 19,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                          size: 19,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 340,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff3b2080),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 340 / 3,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Today",
                                style: TextStyle(
                                  color: Color(0xff1e1779),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Month",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "All time",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      // AssetImage('asset/images/Rank2.png'),
                                      NetworkImage(
                                          "https://wellgroomedgentleman.com/media/images/Tony_Stark_Beard_with_Quiff_Hairstyle.width-800.jpg")),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tony Stark",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "6500 Pts",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    //  AssetImage("asset/images/Rank1.png"),
                                    NetworkImage(
                                        "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/tom-holland-robert-downey-jr_0.jpg"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Peter Parker",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "7400 Pts",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    //AssetImage("asset/images/Rank3.png"),
                                    NetworkImage(
                                        "https://lumiere-a.akamaihd.net/v1/images/pp_johncarter_herobanner_mobile_19880_b14f099c.jpeg"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "John Carter",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "5800 Pts",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 360,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "14",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage:
                        //AssetImage('asset/images/man.png'),
                        NetworkImage(
                            "https://www.koimoi.com/wp-content/new-galleries/2023/01/shah-rukh-khan-helps-a-girl-adjust-her-handbag-melting-the-entire-internet-at-once-netizens-label-him-a-gentleman-watch-01.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Satwik Pachino",
                    style: TextStyle(
                      letterSpacing: 0.2,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "(You)",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "3484 Pts",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              padding: EdgeInsets.only(right: 20),
              itemBuilder: (context, index) {
                return Container(
                  height: 70,
                  width: 340,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          text1[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(image1[index]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          text2[index],
                          style: TextStyle(
                            letterSpacing: 0.2,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          text3[index],
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
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
                          "https://www.koimoi.com/wp-content/new-galleries/2023/01/shah-rukh-khan-helps-a-girl-adjust-her-handbag-melting-the-entire-internet-at-once-netizens-label-him-a-gentleman-watch-01.jpg"),
                ),
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
