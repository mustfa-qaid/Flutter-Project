import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mmm/Additive.dart';
import 'package:mmm/Affine.dart';
import 'package:mmm/Monoalphabitic.dart';
import 'package:mmm/Multiplictive.dart';
import 'package:mmm/Program.dart';
import 'package:mmm/Transposition.dart';
import 'package:mmm/developers.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.greenAccent,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black87),
                accountName: Text("My Project"),
                accountEmail: Text("Proj@gmail.com"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Developers()));
                },
                leading: Icon(
                  Icons.person,
                  size: 30,
                ),
                title: Text(
                  "About Developers",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(
                color: Colors.black,
                thickness: 1.3,
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Program()));
                },
                leading: Icon(
                  Icons.list_alt_sharp,
                  size: 30,
                ),
                title: Text(
                  "About the program",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              Divider(
                color: Colors.black,
                thickness: 1.3,
              ),
              FilledButton.icon(
                style: FilledButton.styleFrom(backgroundColor: Colors.redAccent),
                onPressed: () => exit(0),
                label: Text("exit"),
                icon: Icon(Icons.exit_to_app_outlined),
              )
            ],
          ),
        ),
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text(
            "Cipher Tool",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdditivePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(40, 30))),
                        width: 150,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.enhanced_encryption_outlined,
                              size: 50,
                              color: Colors.black54,
                            ),
                            Text(
                              "Additive",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MultiplictivePage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.elliptical(40, 40))),
                          width: 180,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.enhanced_encryption_outlined,
                                size: 50,
                                color: Colors.black54,
                              ),
                              Text(
                                "Multiplictive",
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AffinePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(40, 30))),
                        width: 150,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.enhanced_encryption_outlined,
                              size: 50,
                              color: Colors.black54,
                            ),
                            Text(
                              "Affine",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MonoalphabiticPage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.elliptical(40, 30))),
                          width: 180,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.enhanced_encryption_outlined,
                                size: 50,
                                color: Colors.black54,
                              ),
                              Text(
                                "Monoalphabitic",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TranspositionPage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.elliptical(40, 30))),
                          width: 180,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.enhanced_encryption_outlined,
                                size: 50,
                                color: Colors.black54,
                              ),
                              Text(
                                "Transposition",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )
                            ],
                          )),
                    )
                  ],
                ),

              ]),
        )
    );
  }
}
