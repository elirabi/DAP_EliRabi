import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  String userName;
  HomeScreen({super.key, this.userName = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 209, 255),
      appBar: AppBar(
        title: const Text('SOS GENIA LINDA'),
      ),
      body: Center(
        child: Text("Welcome $userName",style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 79, 0, 105)),)
      ),
    );
  }
}

/*child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nosotras somos",style: TextStyle(fontSize: 40, color: Colors.white),),
              Text("Sofi y Eli :)",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 169, 3, 78)),)
            ],
          ),*/