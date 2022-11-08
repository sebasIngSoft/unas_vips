import 'package:flutter/material.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class MenuRegister extends StatefulWidget {
  @override
  State<MenuRegister> createState() => _MenuRegisterState();
}

class _MenuRegisterState extends State<MenuRegister> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40),

              //nombre

              Container(
                //margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text('Tipo de \nUsuario',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              SizedBox(height: 40),

              //Negocio button
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NegocioRegister()),
                  );
                },
                elevation: 8.0,
                fillColor: Color.fromRGBO(102, 0, 51, 0.4),
                child: Text(
                  'Negocio',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.all(50.0),
                shape: CircleBorder(),
              ),
              SizedBox(height: 20),

              //cliente button
              RawMaterialButton(
                onPressed: () {},
                elevation: 8.0,
                fillColor: Color.fromRGBO(102, 0, 51, 0.4),
                child: Text(
                  'Cliente',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                padding: EdgeInsets.all(50.0),
                shape: CircleBorder(),
              ),
              SizedBox(height: 10),

              //Texto
              Text(
                'Por favor seleccione un tipo de usuaio',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),

              //button siguiente
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                    'Siguiente',
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
  }
}
