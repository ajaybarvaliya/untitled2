import 'package:flutter/material.dart';

class Hisajan extends StatelessWidget {
  Hisajan({Key? key}) : super(key: key);

  List Color1 = [
    Color(0xffe3f8ff),
    Color(0xfff2ffe6),
    Color(0xfffff2fc),
    Color(0xfffef8ec),
  ];

  List name = ["App", "Web", "Dashboard", "Graphics"];

  List image = [
    "asset/images/app.png",
    "asset/images/web.png",
    "asset/images/dashboard-removebg-preview.png",
    "asset/images/graphics-removebg-preview.png"
  ];

  List Color2 = [
    Color(0xffaceffc),
    Color(0xffd4f0b6),
    Color(0xffe3bade),
    Color(0xfffcd9a6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.drag_indicator_sharp),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.search_rounded),
                  Spacer(),
                  Image(
                    image: AssetImage('asset/images/man.png'),
                    height: 30,
                    width: 30,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Hi Sajan!",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              Text(
                "Good afternoon",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xfffff0eb),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 330 / 3,
                      decoration: BoxDecoration(
                        color: Color(0xffffc5b7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Projects',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Clients',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Schedules',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                scale: 5,
                                image: AssetImage(
                                  image[index],
                                ),
                              ),
                              shape: BoxShape.circle,
                              color: Color1[index]),
                          child: Image.asset(
                            image[index],
                            color: Color2[index],
                            scale: 5,
                          ),
                        ),
                        Text(
                          "${name[index]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                width: 330,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xffecedff),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.folder, color: Color(0xff9ca0e2)),
                    Icon(Icons.notifications, color: Color(0xff9ca0e2)),
                    CircleAvatar(
                      backgroundColor: Color(0xff7f84f9),
                      radius: 25,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    Icon(Icons.email, color: Color(0xff9ca0e2)),
                    Icon(Icons.settings, color: Color(0xff9ca0e2)),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
