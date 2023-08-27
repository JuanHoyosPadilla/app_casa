import 'package:app_prueba/pages/detalles.dart';
import 'package:flutter/material.dart';

class TarejetaCasa extends StatefulWidget {
  const TarejetaCasa({super.key});

  @override
  State<TarejetaCasa> createState() => _TarejetaCasaState();
}

class _TarejetaCasaState extends State<TarejetaCasa> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>const Detalles()) );
      },
      child: Container(
        width: double.infinity,
        height: 100,
        margin:const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 3),
                  color: Color.fromARGB(44, 0, 0, 0),
                  blurRadius: 7,
                  spreadRadius: 1
                  ),
              
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://i.pinimg.com/564x/7e/5d/e6/7e5de680a94438ef4fdc2f2f606b972c.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Casa en Medellin',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '\$ 100 millones',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 62, 61, 61)),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.add_circle_outline_outlined,
                      size: 40,
                      color: Color.fromARGB(255, 113, 113, 113),
                    ),
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> const Detalles()));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
