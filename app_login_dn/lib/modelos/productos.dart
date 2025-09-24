class Producto {
  final String nombre;
  final String descripcion;
  final String precio;
  final decimal = 100;

  Producto({
    required this.nombre,
    required this.descripcion,
    required this.precio,
  });

  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      precio: json['precio'],
    );
  }
}
