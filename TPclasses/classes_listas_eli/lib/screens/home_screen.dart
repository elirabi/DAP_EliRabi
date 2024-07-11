// ignore_for_file: must_be_immutable
import 'package:classes_listas_eli/entities/cafes.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:classes_listas_eli/screens/details_screens.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  HomeScreen({super.key});

  List<Cafes> tiposdecafes = [
    Cafes('Latte', 'Espresso con leche y espuma', 'https://www.andrew.cmu.edu/user/dahu/images/latte.jpg'),
    Cafes('Americano', 'Espresso y agua caliente', 'https://www.andrew.cmu.edu/user/dahu/images/americano.jpg'),
    Cafes('Mocha', 'Espresso, chocolate, leche y espuma', 'https://www.andrew.cmu.edu/user/dahu/images/mocha.jpg'),
    Cafes('Affogato', 'Espresso y helado', 'https://www.andrew.cmu.edu/user/dahu/images/affogato.jpg'),
    Cafes('Irish coffee', 'Espresso, whiskey y crema batida ', 'https://www.andrew.cmu.edu/user/dahu/images/irish-coffee.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Cafés'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(tiposdecafes[index].cafe),
              subtitle: Text(tiposdecafes[index].descrip),
              leading: SizedBox(width: 50, height: 50, child: Image.network(tiposdecafes[index].img)),
              onTap: (){
                context.pushNamed(DetailScreen.name, extra: tiposdecafes[index]);
              }
            ),
          );
        },
      ),
    );
  }
}