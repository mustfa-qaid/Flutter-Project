import 'package:flutter/material.dart';

class Program extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "About Program",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black54),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: [
                Text(
                  "Explaination :",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
                  width: 350,
                  height: 400,
                  child: Center(
                    child: Text(
                      "This program represent \n the simple algorithims\n   of cryptography that\na cyber security student\n         must know in\n        his major feild",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black54),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
