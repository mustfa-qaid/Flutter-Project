import 'package:flutter/material.dart';

class Developers extends StatelessWidget {
  const Developers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Developers",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black54),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Our Note :",
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
                      "This program hereby \n   was developed by \n some of the smartest \n minds in this planet :\n        P.Mustfa Qaid \n   P.Mohammed Naef",
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
