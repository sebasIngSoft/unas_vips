import 'package:get/get.dart';
import 'package:unas_vip/domain/user/model/user.dart';

class DataDB extends GetxController {
  User user1 = User(
      nombre: 'Alver jose',
      nit: '11211111',
      empresa: 'patas limpias',
      correo: 'pataslimpias@gmail.com',
      contrasena: '12345678',
      telefono: '77777777');
  User user2 = User(
      nombre: 'maria lupita',
      correo: 'maria@gmail.com',
      contrasena: '12345678',
      telefono: '58555555');

  final listUsuarios = ['pataslimpias@gmail.com', 'maria@gmail.com'].obs;
  final listPassword = ['12345678', '12345678'].obs;
  final listCitas = [].obs;
  final listServicios = ['pediquiur', 'maniquiur'].obs;
  final listManicuristas = [
    User(
        nombre: 'Alver jose',
        nit: '11211111',
        empresa: 'patas limpias',
        correo: 'pataslimpias@gmail.com',
        contrasena: '12345678',
        telefono: '77777777')
  ].obs;
  late User loguiado = User();
}
