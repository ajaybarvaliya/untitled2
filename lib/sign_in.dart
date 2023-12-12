import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: 360,
          color: Colors.grey.shade400,
          child: Stack(
            children: [
              Positioned(
                left: -300,
                top: -225,
                child: Container(
                  height: 1000,
                  width: 600,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.indigo.shade400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 35),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Text(
                        "Sign in with your username or email",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        width: 280,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Username or Email"),
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Password"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Text(
                        "Create Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          decorationThickness: 2,
                          decorationColor: Colors.indigo,
                          // decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 219),
                      child: Container(
                        width: 100,
                        height: 2,
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade400,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Text(
                        "Social login can save your valuable time",
                        style: TextStyle(decorationColor: Colors.indigo),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            width: 120,
                            height: 2,
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade400,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Icon(Icons.handshake, color: Colors.indigo),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 120,
                            height: 2,
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade400,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 150,
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 150,
                                child: Row(
                                  children: [
                                    Image(
                                      image: NetworkImage(
                                        "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Google"),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.indigo.shade400, width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                  "https://www.freepnglogos.com/uploads/facebook-logo-13.png",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Facebook",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
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
    );
  }
}
