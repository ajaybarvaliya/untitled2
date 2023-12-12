import 'package:flutter/material.dart';

class educationapp1 extends StatelessWidget {
  const educationapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //alignment: Alignment.,
                  width: 50,
                  height: 10,
                  child: Icon(Icons.arrow_back),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: "ChivoMono",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 310,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 310,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Password", suffix: Icon(Icons.remove_red_eye)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 290,
              child: Center(
                child: Text(
                  "Log in",
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
                Container(
                  alignment: Alignment.centerRight,
                  height: 20,
                  width: 220,
                  child: Text("Don't have an account?"),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  height: 20,
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST02qoEeWegNhgRnJr-L_TDsnSmlxXCtgJQA&usqp=CAU"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
