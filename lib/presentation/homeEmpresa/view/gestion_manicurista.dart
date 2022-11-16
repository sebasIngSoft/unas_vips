import 'package:flutter/material.dart';
import 'package:unas_vip/presentation/register/widget/input_custom.dart';

class GestionManicurista extends StatelessWidget {
  const GestionManicurista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      //backgroundColor: Colors.black87,
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
                    hintText: 'Nombre', validatorTexts: 'Ingrese su nombre'),

                SizedBox(height: 7),
                //Nit
                InputCustom(
                    hintText: 'NIT', validatorTexts: 'Ingrese un NIT correcto'),

                SizedBox(height: 7),
                //Nombre Empresa
                InputCustom(
                    hintText: 'Nombre empresa',
                    validatorTexts: 'Ingrese un nombre de empresa'),

                SizedBox(height: 7),

                //Telefono
                InputCustom(
                    hintText: 'Telefono',
                    validatorTexts: 'ingrese un telefono'),

                SizedBox(height: 7),

                //Correo
                InputCustom(
                    hintText: 'Correo',
                    validatorTexts: 'ingrese un coreo correcto'),

                SizedBox(height: 7),

                //Contraseña
                InputCustom(
                    hintText: 'Contraseña',
                    validatorTexts: 'contraseña invalida'),

                //Button
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
