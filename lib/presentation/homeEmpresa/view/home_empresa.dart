import 'package:flutter/material.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class MenuEmpresa extends StatefulWidget {
  MenuEmpresa({Key? key}) : super(key: key);

  @override
  State<MenuEmpresa> createState() => _MenuEmpresaState();
}

class _MenuEmpresaState extends State<MenuEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 700,
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
                  child: Text(
                    'Bienvenid@ Patas\n         Limpias',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HitorialCitas()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 50, right: 50)),
                      child: const Text(
                        'Historial de citas',
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
                              builder: (context) => GestionServicio()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 40, right: 40)),
                      child: const Text(
                        'Servicios',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GestionManicurista(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                          padding: EdgeInsets.only(left: 80, right: 80)),
                      child: const Text(
                        'Gestion Manicurista',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
//
                SizedBox(height: 20),

                Container(
                  child: SizedBox(
                    //padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Perfil()),
                        );
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
