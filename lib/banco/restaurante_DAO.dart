import 'package:mimpedir/banco/database_helper.dart';
import 'package:voupedir/banco/database_helper.dart';

import '../restaurante.dart';

class RestauranteDAO{
  static Future<List<Restaurante>> listarTodos() async{
    final db = await DatabaseHelper.getDataBase();
    final resultado = await db.querry('tb_restaurante');

    return resultado.map((mapa){
      return Restaurante(
        codigo: mapa['cd_restaurante'] as int,
        nome: mapa['nm_restaurante'] as String
      );
    }).toList();
  }
}