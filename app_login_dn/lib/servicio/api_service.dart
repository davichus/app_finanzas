import 'package:app_login_dn/modelos/productos.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'http://192.168.30.30/APIAPPJAPON/';
  final Dio _dio = Dio();

  Future<List<Producto>> getProductos() async {
    try {
      final response = await _dio.get('${_baseUrl}productos.php');

      if (response.statusCode == 200) {
        final data = response.data;

        if (data is List) {
          // Si tu API devuelve una lista de productos
          return data
              .map((item) => Producto.fromJson(Map<String, dynamic>.from(item)))
              .toList();
        }

        if (data is Map) {
          // Si tu API devuelve un solo producto como en tu ejemplo
          return [Producto.fromJson(Map<String, dynamic>.from(data))];
        }
      }
      return [];
    } catch (e) {
      print('Error en getProductos: $e');
      return [];
    }
  }
}
