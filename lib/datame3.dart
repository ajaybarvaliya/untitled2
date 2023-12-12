import 'package:flutter/material.dart';

class Datame3 extends StatelessWidget {
  const Datame3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 360,
          height: 800,
          child: Stack(
            children: [
              Positioned(
                top: -110,
                left: -80,
                child: Container(
                  height: 250,
                  width: 270,
                  decoration: BoxDecoration(
                      color: Colors.indigo, shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 25),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 70),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.grey.shade300,
                  child: Icon(Icons.info_outline),
                ),
              ),
              Positioned(
                top: 90,
                left: -190,
                right: -190,
                child: Container(
                  width: 900,
                  height: 900,
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade900, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 219),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 190,
                        ),
                        Text(
                          "Email or phone number",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Container(
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Type here...",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Password",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Container(
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Type here...",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Confirm password",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Container(
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Type here...",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Name or pseudo",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Container(
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Type here...",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
