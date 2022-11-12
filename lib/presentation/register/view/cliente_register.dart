import 'package:flutter/material.dart';
import 'package:unas_vip/presentation/register/widget/input_custom.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class ClienteRegister extends StatelessWidget {
  const ClienteRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 700,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/logo_fondo.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 90),
                //Nombre
                Container(
                  //margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Text('Registro',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
                SizedBox(height: 20),

                //Nombre Completo
                InputCustom(
                    hintText: 'Nombre Completo',
                    validatorTexts: 'Ingrese un nombre'),

                SizedBox(height: 7),

                //Cedula
                InputCustom(
                    hintText: 'Cedula', validatorTexts: 'Ingrese un nombre'),

                SizedBox(height: 7),

                //Telefono
                InputCustom(
                    hintText: 'Telefono',
                    validatorTexts: 'Ingrese un telefono'),

                SizedBox(height: 7),

                //Correo
                InputCustom(
                    hintText: 'Correo', validatorTexts: 'Ingrese un Correo'),

                SizedBox(height: 7),

                //Contraseña
                InputCustom(
                    hintText: 'Contraseña',
                    validatorTexts: 'Ingrese un Contraseña'),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 110),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                    ),
                    child: const Text(
                      'Registrarse',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // campoFormulario(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
