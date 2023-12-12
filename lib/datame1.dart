import 'package:flutter/material.dart';

class Datame1 extends StatelessWidget {
  const Datame1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 270,
              height: 250,
              child: Image(
                image: AssetImage(
                    "asset/images/117972_internet_512x512_prev_ui.png"),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 490,
            width: 360,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: -50,
                  right: -50,
                  child: Container(
                    height: 500,
                    width: 500,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400, shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: -50,
                  right: -50,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade500, shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: -50,
                  right: -50,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade900, shape: BoxShape.circle),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 130,
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade900,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.indigo),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
