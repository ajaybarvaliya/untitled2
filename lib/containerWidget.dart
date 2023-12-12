import 'package:flutter/material.dart';

class containerWidget extends StatelessWidget {
  const containerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        color: Colors.red,
        width: 200,

        alignment: Alignment.topRight,
        padding: EdgeInsets.only(top: 20, left: 30),
        decoration: BoxDecoration(
            color: Colors.orange,
            //border: Border.all(color: Colors.red, width: 10),
           // borderRadius:BorderRadius.only(topLeft:Radius.circular(10) ,bottomRight:Radius.circular(10) ),
          shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.lightGreen,
                //  spreadRadius: 3,
               // blurRadius: 7,
                blurStyle: BlurStyle.inner,
                offset: Offset(3,5)
              )
            ],
            gradient: LinearGradient(
              colors:[Colors.blue,Colors.red,Colors.pinkAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
        ),
         child: Text("hello"),
      ),
    );
  }
}
