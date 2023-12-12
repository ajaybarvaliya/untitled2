import 'package:flutter/material.dart';

class educationapp extends StatelessWidget {
  const educationapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Center(
                  child: Text(
                    "  Welcome to education app",
                    style: TextStyle(fontSize: 25, fontFamily: "ChivoMono"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVehbAQpKxJ3qBq7EAA7RfB7trFCtLpIp1PA&usqp=CAU'),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 250,
            child: Center(
              child: Text(
                "Log in",
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.blue],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 250,
            child: Center(
              child: Text(
                "Sign up",
                style: TextStyle(color: Colors.black),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
