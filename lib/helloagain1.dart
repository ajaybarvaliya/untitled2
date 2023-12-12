import 'package:flutter/material.dart';

class helloagain1 extends StatelessWidget {
  const helloagain1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 380,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.dribbble.com/users/916023/screenshots/11474693/media/1d5d0b4a85720b6db79d6c6230e9df67.png?compress=1&resize=1200x900&vertical=top'),
                    fit: BoxFit.fitHeight),
                color: Colors.indigo,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "  Discover your Dream job Here",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Explore all the most exiting jobs roles "),
            ),
            Center(
              child: Text(
                "bassed on your interest And study major",
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  border: Border.all(color: Colors.grey.shade200, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text("Register"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Sign in"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
