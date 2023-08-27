import 'package:app_prueba/pages/pagina_contacto.dart';
import 'package:flutter/material.dart';

class Detalles extends StatelessWidget {
  const Detalles({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double halfScreenHeight = screenHeight / 2;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 1,
              child: Container(
                width: double.infinity,
                height: halfScreenHeight,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 171, 169, 169),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.network(
                        'https://i.pinimg.com/564x/7e/5d/e6/7e5de680a94438ef4fdc2f2f606b972c.jpg',
                        fit: BoxFit.cover,
                      ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Casa en Medellin',
            style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding:EdgeInsets.all(8.0),
            child: Text('Casa ubicada en la zona norte de la ciudad de medellin, cuenta con 5 habitaciones 3 baños, parqueadero y zona de visitas ',
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 102, 102, 102)
            ),
            textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 202, 201, 201)
                  ),
                  child:const  Center(
                    child: Text(
                      '400 metros cuadrados',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, PageRouteBuilder(
              
                      pageBuilder: (context,animation,secondaryAnimation){
                        return  const PaginaContacto();
                         
                      },
                      transitionsBuilder: (context,animation,secondaryAnimation,child){
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );

                      }
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                    textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )

                  ),
                   child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Contactar'),
                      Icon(Icons.call,size: 30,)
                    ],
                   )
                   )
                ],)
            ),
          )
        ],
      )
    );
  }
}
