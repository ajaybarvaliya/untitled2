import 'package:flutter/material.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('asset/images/images-removebg-preview.png'),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                child: Center(
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 30, color: Colors.grey.shade500),
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 150,
                child: Center(
                  child: Text(
                    "Login to your account",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 70),
                              hintText: "Username",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 70),
                              hintText: "Password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 95,
                    //  left: -10,
                    child: Container(
                      height: 55,
                      width: 55,
                      //color: Colors.cyan,
                      child: Icon(Icons.person, color: Colors.cyan),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 3)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    child: Container(
                      height: 55,
                      width: 55,
                      //color: Colors.cyan,
                      child: Icon(Icons.lock, color: Colors.cyan),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 3)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 45,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 30,
                width: 250,
                child: Center(
                    child: Text("---------- or sign in with ----------")),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                            scale: 12),
                      ),
                      // color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan,
                          blurRadius: 1,
                          offset: Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/facebook-color-icon.png",
                            scale: 15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan,
                          blurRadius: 1,
                          offset: Offset(2, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.cms-twdigitalassets.com/content/dam/help-twitter/twitter_logo_blue.png.twimg.768.png",
                            scale: 10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan,
                          offset: Offset(2, 2),
                          blurRadius: 1,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 230,
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 130,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign up here",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
