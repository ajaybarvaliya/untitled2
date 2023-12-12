import 'package:flutter/material.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 800,
              width: 360,
            ),
            Positioned(
              top: -75,
              left: -75,
              child: Container(
                height: 225,
                width: 225,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -150,
              left: 50,
              child: Container(
                height: 225,
                width: 225,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -75,
              right: -75,
              child: Container(
                height: 225,
                width: 225,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -150,
              right: 50,
              child: Container(
                height: 225,
                width: 225,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 160,
              right: 0,
              child: Container(
                height: 50,
                width: 100,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 3, spreadRadius: 2),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 100,
              child: Container(
                height: 150,
                width: 250,
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Positioned(
              top: 350,
              child: Container(
                height: 200,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 290,
                      height: 66.66,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 66.66,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Email Address",
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 3, blurRadius: 3)
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 415,
              left: 260,
              child: Container(
                height: 65,
                width: 65,
                child: Icon(Icons.check, color: Colors.white, size: 30),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent, shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
