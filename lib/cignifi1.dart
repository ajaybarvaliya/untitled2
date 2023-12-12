import 'package:flutter/material.dart';

class cignifi1 extends StatelessWidget {
  const cignifi1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 360,
              height: 800,
              //color: Colors.indigo,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 15),
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.wixstatic.com/media/50f81c_d7e7c51cdb534e5ebf6b81698a759fa1~mv2.png/v1/fill/w_248,h_142,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Cigfi%20Logo%20white%20PNG.png"))),
            ),
          ],
        ),
      ),
    );
  }
}
