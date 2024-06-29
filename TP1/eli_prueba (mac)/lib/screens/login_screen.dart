import 'package:eli_prueba/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

class _LoginView extends StatelessWidget{
  TextEditingController userController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
  
  _LoginView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    hintText: '     Username',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(40),
                       ),
                     ),
                     icon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 51, 0, 133),
                      )
                      
                  )
                ),
                   TextField(
                  obscureText: true,
                  controller: pswdController,
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
                  onPressed: (){
                  if(userController.text=='elirabi' && pswdController.text=='eli'){
                    print('Login Success');
            
                    context.pushNamed(HomeScreen.name, extra: userController.text);
                  }
                  if(userController.text=='' || pswdController.text==''){
                    print('Complete fields');
                    return;
                  }
                  if(userController.text=='elirabi' && pswdController.text!='eli'){
                    print('Incorrect password');
                  }
                  if(userController.text!='elirabi' && pswdController.text=='eli'){
                    print('Incorrect user');
                  }
                  if(userController.text!='elirabi' && pswdController.text!='eli'){
                    print('Incorreect, try again');
                  }
                }, 
                child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),   
      );
  }
}
/*
class _LoginView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  _LoginView();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Please enter your username",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 79, 0, 105)),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            context.pushNamed(HomeScreen.name, extra: _usernameController.text);
            //context.goNamed(HomeScreen.name);
          },
          child: const Text("Login",style: TextStyle(color: Color.fromARGB(255, 79, 0, 105)),),
        ),
      ],
    );
  }
}*/