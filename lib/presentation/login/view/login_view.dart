import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/login/view_model/login_view_model.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final dataDB = Get.put(DataDB());

  LoginViewModel viewModel = LoginViewModel();

  final _formKey = GlobalKey<FormState>();

  TextEditingController usuario = new TextEditingController();

  TextEditingController contrasena = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo_fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.only(bottom: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Login
                const Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                ),

                //Email TextField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        border: Border.all(color: const Color(0xFF6F0C41)),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: usuario,
                        decoration: InputDecoration(
                            hintText: 'Correo',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                //Password TextFieldPassword
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        border: Border.all(color: const Color(0xFF6F0C41)),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: contrasena,
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        // onChanged: (String val) {
                        //   contrasena = val;
                        // },
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),

                //Forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Si no tiene usuario puede registrarse ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuRegister()),
                        ),
                      },
                      child: const Text('aquí'),
                    ),
                  ],
                ),
                Obx(() => Text(
                      viewModel.mensaje.value,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () =>
                        viewModel.validarUsario(usuario.text, contrasena.text),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(102, 0, 51, 0.4),
                    ),
                    child: const Text(
                      'Iniciar sesión',
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
