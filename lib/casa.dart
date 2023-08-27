class Casa {
  final int id;
  final String ubicacion;
  final String imagenUrl;
  final double precio;
  final String metros;
  Casa({
    required this.id,
    required this.ubicacion,
    required this.imagenUrl,
    required this.precio,
    required this.metros
    });
}

List<Casa> listaCasas = [
  Casa(id: 1, 
  ubicacion: 'Medellin', 
  imagenUrl:'https://i.pinimg.com/564x/7e/5d/e6/7e5de680a94438ef4fdc2f2f606b972c.jpg', 
  precio: 25000000,
  metros: '400 metros cuadrados'
  ),
   Casa(id: 2, 
  ubicacion: 'Medellin', 
  imagenUrl:'https://i.pinimg.com/564x/7e/5d/e6/7e5de680a94438ef4fdc2f2f606b972c.jpg', 
  precio: 25000000,
  metros: '400 metros cuadrados'
  )
];