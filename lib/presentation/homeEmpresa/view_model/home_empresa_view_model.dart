import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:get/get.dart';
import 'package:unas_vip/domain/user/model/user.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/homeEmpresa/view/home_empresa.dart';

class HomeEmpresaViewModel {
  final DataDB dataDB = Get.find();
  validarRegistro(context, nit, nombre, empresa, telefono, correo, contrasena) {
    try {
      dataDB.listManicuristas.value.add(User(
          nombre: nombre,
          nit: nit,
          empresa: empresa,
          telefono: telefono,
          correo: correo,
          contrasena: contrasena));
      mostrarAlertaUtilsError(context, 'Registro exitoso');
    } catch (e) {
      print('error $e');
      mostrarAlertaUtilsError(context, 'Sea producido un error');
    }
  }

  void mostrarAlertaUtilsError(BuildContext context, String mensaje) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            content: Container(
              constraints: BoxConstraints(
                  minHeight: 200, minWidth: double.infinity, maxHeight: 300),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.info_outline),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        mensaje,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: ElevatedButton(
                        onPressed: () => Get.off(MenuEmpresa()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                        ),
                        child: const Text(
                          'Aceptar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
