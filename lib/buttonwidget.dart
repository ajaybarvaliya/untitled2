import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // SizedBox(
            //   height: 100,
            // ),
            ElevatedButton(
              onPressed: () {
                print("kishan");
              },
              onLongPress: () {
                print("mohit");
              },
              child: Icon(Icons.add),
              // style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all(Colors.green),
              //     elevation: MaterialStateProperty.all(10),
              //     shadowColor: MaterialStateProperty.all(Colors.red)),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                elevation: 10,
                shadowColor: Colors.black,
                minimumSize: Size(150, 50),
                //padding: EdgeInsets.all(20),
                //alignment: Alignment.topRight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                side: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Register"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.yellow,
                elevation: 10,
                shadowColor: Colors.red,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Text("login"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
              ),
              iconSize: 50,
              highlightColor: Colors.yellow,
              splashColor: Colors.red,
              splashRadius: 20,
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                print("hello");
              },
              child: Container(
                height: 50,
                width: 150,
                color: Colors.red,
                child: Center(
                  child: Text("Login"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 150,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
