import 'package:flutter/material.dart';
import 'Algorithems.dart';

class AdditivePage extends StatelessWidget {
  Algorithems cipher = Algorithems();
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Additive cipher: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  controller: n1,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.text_fields_outlined,
                        size: 25,
                        color: Colors.green,
                      ),
                      hintText: "enter a plaintext/ciphertext",
                      hintStyle: TextStyle(color: Colors.lightGreen, fontSize: 20)),
                ),
                TextFormField(
                  controller: n2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.key,
                        size: 25,
                        color: Colors.green,
                      ),
                      hintText: "enter a key for algorythm",
                      hintStyle: TextStyle(color: Colors.lightGreen, fontSize: 20)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                      style: FilledButton.styleFrom(backgroundColor: Colors.greenAccent),
                      onPressed: () {
                        n3.text =
                            cipher.additiveEncrypt(n1.text, int.parse(n2.text));
                      },
                      child: Text("Encrypt",style: TextStyle(fontSize: 18,color: Colors.black54),),),
                    FilledButton(
                        style: FilledButton.styleFrom(backgroundColor: Colors.greenAccent),
                        onPressed: () {
                          n3.text =
                              cipher.additiveDecrypt(n1.text, int.parse(n2.text));
                        },
                        child: Text("Decrypt",style: TextStyle(fontSize: 18,color: Colors.black54),)),
                  ],
                ),
                TextFormField(
                  controller: n3,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 25,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
