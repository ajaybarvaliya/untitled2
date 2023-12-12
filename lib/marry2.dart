import 'package:flutter/material.dart';

import 'marry.dart';

class Marry2 extends StatelessWidget {
  Marry2({Key? key}) : super(key: key);

  List colors1 = [
    Color(0xff80bbf3),
    Color(0xffefa25e),
    Color(0xffe96388),
    Color(0xffa87cf3),
    Color(0xff66e2bd),
  ];

  List text1 = ["David Borg", 'Lucy', 'Jerry Cool West', 'Bold', 'David Borg'];
  List text2 = [
    'Title: Flying Wings',
    'Growing up trouble',
    "Title: Sculptor's diary",
    "Title: IIIustration of little girl",
    "Title: Super men"
  ];
  List text3 = ["1", '2', '3', '4', '5'];
  List image1 = [
    "https://upload.wikimedia.org/wikipedia/commons/7/75/220624_%EB%B0%A9%ED%83%84%EC%86%8C%EB%85%84%EB%8B%A8_%EB%B7%94%281%29.jpg",
    "https://staticg.sportskeeda.com/editor/2022/06/74854-16564077891504-1920.jpg",
    "https://static.wikia.nocookie.net/the-bangtan-boys/images/e/e9/Jimin_Proof_Collector.png/revision/latest?cb=20221005032940",
    "https://img.etimg.com/thumb/msid-96770740,width-650,height-488,imgsize-23826,,resizemode-75/jin-canva.jpg",
    "https://images.news18.com/ibnlive/uploads/2021/09/namjoon.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xffbb56f1),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Marry(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Designer",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Category",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Attention",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: colors1.length,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  width: 340,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: colors1[index],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          backgroundImage: NetworkImage(
                            image1[index],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text1[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              text2[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "2342",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Text(
                                      "Popularity",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "4736",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Text(
                                      "Like",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "136",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Text(
                                      "followed",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              text3[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ranking',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
