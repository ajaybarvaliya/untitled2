import 'package:flutter/material.dart';

class edcationapp2 extends StatelessWidget {
  const edcationapp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 70,
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "ChivoMono"),
                    ),
                  ),
                ],
              ),
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      suffix: Icon(Icons.remove_red_eye)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                width: 300,
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.blue],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 20,
                    width: 220,
                    alignment: Alignment.centerRight,
                    child: Text("Alredy have an account?"),
                  ),
                  Container(
                    height: 20,
                    width: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 250,
                width: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRJqvRAt8WPoHvoJTnQJ7rUV7kMjtXph-xCmTXe1YLNNhjNDIVJT0NVS_SZENK_mVZOG4&usqp=CAU"),
                      fit: BoxFit.fill),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
