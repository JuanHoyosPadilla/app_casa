
import 'package:flutter/material.dart';

class PaginaContacto extends StatelessWidget {
  const PaginaContacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        
      ),
      body: const Text('hola pagina nueva'),
    );
  }
}