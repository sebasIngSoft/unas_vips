import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unas_vip/presentation/homeEmpresa/view_model/home_empresa_view_model.dart';
import 'package:unas_vip/presentation/register/widget/input_custom.dart';

class GestionManicurista extends StatelessWidget {
  const GestionManicurista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeEmpresaViewModel viewModel = HomeEmpresaViewModel();
    TextEditingController nombre = TextEditingController();
    TextEditingController nit = TextEditingController();
    TextEditingController empresa = TextEditingController();
    TextEditingController telefono = TextEditingController();
    TextEditingController correo = TextEditingController();
    TextEditingController contrasena = TextEditingController();

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("assets/logo_fondo.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //Nombre
                SizedBox(height: 50),
                Container(
                  //margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),

                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Text('Registro\nManic/Pedi',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),

                SizedBox(height: 20),
                //Nombre Completo

                InputCustom(
                  hintText: 'Nombre',
                  validatorTexts: 'Ingrese su nombre',
                  controller: nombre,
                ),

                SizedBox(height: 7),
                //Nit
                InputCustom(
                  hintText: 'NIT',
                  validatorTexts: 'Ingrese un NIT correcto',
                  controller: nit,
                ),

                SizedBox(height: 7),
                //Nombre Empresa
                InputCustom(
                  hintText: 'Nombre empresa',
                  validatorTexts: 'Ingrese un nombre de empresa',
                  controller: empresa,
                ),

                SizedBox(height: 7),

                //Telefono
                InputCustom(
                  hintText: 'Telefono',
                  validatorTexts: 'ingrese un telefono',
                  controller: telefono,
                ),

                SizedBox(height: 7),

                //Correo
                InputCustom(
                  hintText: 'Correo',
                  validatorTexts: 'ingrese un coreo correcto',
                  controller: correo,
                ),

                SizedBox(height: 7),

                //Contraseña
                InputCustom(
                  hintText: 'Contraseña',
                  validatorTexts: 'contraseña invalida',
                  controller: contrasena,
                ),

                //Button
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    onPressed: () => viewModel.validarRegistro(
                        context,
                        nit.text,
                        nombre.text,
                        empresa.text,
                        telefono.text,
                        correo.text,
                        contrasena.text),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                    ),
                    child: const Text(
                      'Registrar',
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
      ),
    );
  }
}
