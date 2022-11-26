import 'package:get/get.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/homeCliente/view/home_cliente.dart';
import 'package:unas_vip/presentation/homeEmpresa/view/home_empresa.dart';

class LoginViewModel {
  final DataDB dataDB = Get.find();

  final mensaje = ''.obs;

  validarUsario(usuario, contrasena) {
    if (dataDB.listUsuarios.contains(usuario) &&
        dataDB.listPassword.contains(contrasena)) {
      if (dataDB.listUsuarios.indexOf(usuario) == 0 &&
          dataDB.listUsuarios.indexOf(usuario) != -1) {
        dataDB.loguiado = dataDB.user1;
        Get.to(MenuEmpresa());
      } else {
        dataDB.loguiado = dataDB.user2;
        Get.to(HomeCliente());
      }
    } else {
      mensaje.value = 'Correo o contraseña incorrectos';
    }
  }
}
