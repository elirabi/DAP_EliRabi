// ignore_for_file: must_be_immutable
import 'package:classes_listas_eli/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:classes_listas_eli/entities/users.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  List<Users> usuarios = [
    Users('eli@gmail.com', 'hola'),
    Users('1111@gmail.com', 'numeros'),
    Users('cuak@gmail.com', 'chau'),
  ];

  var snackBar_1 = SnackBar(
      content: const Text("Incorrect user", style: TextStyle(color: Colors.white)),
                      backgroundColor: Color.fromARGB(255, 35, 0, 92),  
      action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {},
      ));

  var snackBar_2 = SnackBar(
      content: const Text("Incorrect password", style: TextStyle(color: Colors.white)),
                      backgroundColor: Color.fromARGB(255, 35, 0, 92),action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {},
      ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:Color.fromARGB(255, 83, 0, 207)),),
          TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    hintText: '     Email',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(40),
                       ),
                     ),
                     icon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 51, 0, 133),
                      )
                      
                  )
                ),
                   TextField(
                  obscureText: true,
                  controller: passController,
                  decoration: const InputDecoration(
                    hintText: '     Password',
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(40),
                       ),
                     ),
                    icon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 115, 76, 255),
                    )
                  ),
                ),
          ElevatedButton(
              onPressed: () {
                int x = usuarios.indexWhere((usuario) => usuario.user == userController.text);
                //indexWhere devuelve -1 si no encuentra
                if (x != -1){
                  if (usuarios[x].pass == passController.text) {
                    context.pushNamed(HomeScreen.name, extra: userController.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar_2);
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar_1);
                }
              },
              child: const Text("Login")),
        ],
      ))),
    );
  }
}