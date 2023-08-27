import 'package:app_prueba/widgets/TarejetaCasa.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 40,
            ),
            title: const Text(
              'CasaAlInstatnte',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active,
                    color: Colors.black,
                    size: 30,
                  ))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Text(
                  'Casas en Venta',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 88, 88)),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 650,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: GridView.count(
                          crossAxisCount: 1,
                          mainAxisSpacing: 5,
                          children:const [
                            TarejetaCasa()
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
