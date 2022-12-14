import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unas_vip/domain/user/model/user.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class HomeCliente extends StatefulWidget {
  HomeCliente({Key? key}) : super(key: key);

  @override
  State<HomeCliente> createState() => _HomeClienteState();
}

class _HomeClienteState extends State<HomeCliente> {
  @override
  Widget build(BuildContext context) {
    final DataDB dataDB = Get.find();
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/logo_fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Logo
                Image(
                    image: AssetImage('assets/logo.png'),
                    width: 300,
                    height: 200),
                //Nombre de la persona
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Bienvenid@ ${dataDB.loguiado.nombre}',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
                SizedBox(height: 30),

                //button realizar citas
                Container(
                  child: SizedBox(
                    //padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(BuscarNegocio());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 50, right: 50)),
                      child: const Text(
                        'Realizar Citass',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                //button historial de citas
                SizedBox(height: 20),

                Container(
                  child: SizedBox(
                    //padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BuscarNegocio()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 40, right: 40)),
                      child: const Text(
                        'Historial de Citas',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                //mi perfil
                SizedBox(height: 20),

                Container(
                  child: SizedBox(
                    //padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Perfil());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 80, right: 80)),
                      child: const Text(
                        'Mi Perfil',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  child: SizedBox(
                    //padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        dataDB.loguiado = User();
                        Get.offAll(LoginPage());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 80, right: 80)),
                      child: const Text(
                        'Cerrar sesi??n',
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
      ),
    );
  }
}
