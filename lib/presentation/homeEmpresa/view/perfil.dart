import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class Perfil extends StatelessWidget {
  Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DataDB dataDB = Get.find();

    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/logo_fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              //nombre
              SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text('Mi Perfil',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/logo.png'),
                    height: 450,

                    // color: Colors.white.(0.7)
                    color: Colors.white.withOpacity(0.4),
                    colorBlendMode: BlendMode.modulate,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 120),
                    child: Text(
                      'Nombre: ${dataDB.loguiado.nombre}\nEmpresa: ${dataDB.loguiado.empresa ?? ''}\nCorreo: ${dataDB.loguiado.correo} \n Telefon: ${dataDB.loguiado.telefono}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
              //button
              Container(
                child: SizedBox(
                  //padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                        padding: EdgeInsets.only(left: 50, right: 50)),
                    child: const Text(
                      'Volver',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
