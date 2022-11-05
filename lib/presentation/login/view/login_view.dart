import 'package:flutter/material.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Image(image: AssetImage('assets/logo.png'), width: 200, height: 200);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Login
              Image(
                  image: AssetImage('assets/logo.png'),
                  width: 200,
                  height: 200),
              Text(
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
                      border: Border.all(color: Color(0xFF6F0C41)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: 'Correo',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              //Password TextFieldPassword
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      border: Border.all(color: Color(0xFF6F0C41)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),

              //Forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Si no tiene usuario puede registrarse ',
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
                        MaterialPageRoute(builder: (context) => MenuRegister()),
                      ),
                    },
                    child: const Text('aquí'),
                  ),
                ],
              ),

              SizedBox(height: 30),

              //ding in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(102, 0, 51, 0.4),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Center(
                    child: Text(
                      'Iniciar sesión',
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
