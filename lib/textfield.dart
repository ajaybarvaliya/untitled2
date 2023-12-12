import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: 200,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                //hintText: "Email",
                labelText: 'Email',
                //prefixIcon: Icon(Icons.person),
                // suffixIcon: Icon(Icons.remove_red_eye),
                //prefix: Icon(Icons.adb_rounded),
                //suffix: Icon(Icons.remove_red_eye),
                //icon: Text("email"),
                helperText: 'nevil',
                labelStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.yellow, width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Colors.red, width: 3, style: BorderStyle.solid),
                ),
              ),
              //textAlign: TextAlign.end,
              // toolbarOptions: ToolbarOptions(
              //   copy: false,
              // ),
              //maxLength: 10,
              //maxLines: 2,

              //readOnly: true,
              //keyboardType: TextInputType.visiblePassword,
            ),
          ),
        ],
      ),
    );
  }
}
