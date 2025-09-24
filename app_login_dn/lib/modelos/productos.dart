class Producto {
  final String nombre;
  final String descripcion;
  final String precio;

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
