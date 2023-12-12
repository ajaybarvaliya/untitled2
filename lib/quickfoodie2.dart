import 'package:flutter/material.dart';

class Quickfoodie2 extends StatelessWidget {
  const Quickfoodie2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: 360,
          child: Stack(
            children: [
              Container(
                height: 240,
                width: 360,
                child: Image(
                    image: NetworkImage(
                        "https://pbs.twimg.com/media/EtDVfFGUwAAxz-Y.jpg"),
                    fit: BoxFit.fill),
              ),
              Positioned(
                top: 190,
                left: -300,
                right: -300,
                child: Container(
                  height: 700,
                  width: 460,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400, shape: BoxShape.circle),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 3,
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Login",
                                style: TextStyle(fontSize: 30),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  prefixIcon: Icon(Icons.mobile_friendly),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.red.shade700,
                                  ),
                                  SizedBox(width: 20),
                                  Text("I agree the"),
                                  Text(
                                    " Terms & Conditions",
                                    style:
                                        TextStyle(color: Colors.red.shade700),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 160,
                                height: 45,
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red.shade700,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Already have an account?Login"),
                    ],
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
