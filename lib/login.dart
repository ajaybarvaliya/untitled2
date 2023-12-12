import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 370,
          height: 800,
          child: Stack(
            children: [
              Positioned(
                top: 350,
                child: Container(
                  height: 130,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(75),
                      bottomRight: Radius.circular(75),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 3, blurRadius: 3),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          enabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 380,
                left: 270,
                child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.arrow_right_alt_outlined,
                      color: Colors.white, size: 30),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 490,
                left: 150,
                child: Container(
                  width: 200,
                  height: 50,
                  child: Text(
                    "Forgotpassword?",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Positioned(
                top: 570,
                child: Container(
                  width: 120,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: 2),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 200,
                child: Container(
                  width: 370,
                  height: 100,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 220,
                top: -90,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800, shape: BoxShape.circle),
                ),
              ),
              Positioned(
                right: 110,
                top: -150,
                child: Container(
                  width: 210,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade800, shape: BoxShape.circle),
                ),
              ),
              Positioned(
                left: 90,
                bottom: -170,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700, shape: BoxShape.circle),
                ),
              ),
              Positioned(
                left: 280,
                bottom: -90,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700, shape: BoxShape.circle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
