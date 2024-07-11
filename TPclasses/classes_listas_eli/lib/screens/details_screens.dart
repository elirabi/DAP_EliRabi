// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String name = 'details';
  dynamic cafe;
  DetailScreen({super.key, this.cafe = 0});
  
  @override
  Widget build(BuildContext context) {
    var eleccion = cafe.cafe;
    return Scaffold(
      appBar: AppBar(
        title: Text("$eleccion"),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 400, height: 300, child: Image.network(cafe.img, fit: BoxFit.fitHeight,)),
          Text(
            "Tu café es $eleccion",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 83, 0, 207)),
          ),
          Text(
            cafe.descrip,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 65, 65, 65)),
          ),
        ],
      )),
    );
  }
}