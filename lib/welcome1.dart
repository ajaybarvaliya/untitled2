import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.cyan,
          image: DecorationImage(
            image: AssetImage(
              'asset/images/images-removebg-preview.png',
            ),
          ),
        ),
      ),
    );
  }
}
