import 'package:basic_navigation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  List user = ['eliysofi', 'eli', 'sofi'];
  List pass = ['somoslindas', 'hola', 'hello'];
  int indiceUser = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login: ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  hintText: 'Insert user: ',
                  icon: Icon(Icons.person)
                  ),
              ),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  icon: Icon(Icons.lock_outline_rounded)
                  ),
              ),
              ElevatedButton(
                onPressed: (){
                  String inputUser = userController.text;
                  String inputPass = passController.text;

                    if (inputUser.isEmpty || inputPass.isEmpty) {
                    SnackBar emptyFields = SnackBar(
                      content: const Text('Incomplete fields',
                      style: TextStyle(color: Colors.white)),
                      backgroundColor: Color.fromARGB(255, 255, 64, 64),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                      duration: const Duration(seconds: 3),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(emptyFields);
                    return;
                    }
                    
                  if (user.contains(inputUser) == false) {
                    //print('Usuario no encontrado.');
                    SnackBar userNotFound = SnackBar(
                      content: const Text(
                          'Usuario no encontrado. Intente de nuevo.',
                          style: TextStyle(color: Colors.white)),
                      backgroundColor: Color.fromARGB(255, 255, 64, 64),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      duration: const Duration(seconds: 2),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(userNotFound);
                    return;
                  } else {
                    indiceUser = user.indexOf(inputUser);

                    if (inputPass == pass[indiceUser]) {
                      context.pushNamed(HomeScreen.name,
                          extra: userController.text);
                    } else {
                      SnackBar incorrectPass = SnackBar(
                        content: const Text('Incorrect password',
                        style: TextStyle(color: Colors.white)),
                        backgroundColor: Color.fromARGB(255, 255, 64, 64),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), ),
                        duration: const Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(incorrectPass);
                    }
                  }
                }, 
                child: const Text("Login")
              ),
            ],
          )
        )
      ),
    );
  }
}
