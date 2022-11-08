import 'package:flutter/material.dart';

class NegocioRegister extends StatelessWidget {
  const NegocioRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black87,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Nombre
              Container(
                //margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text('Registro',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              MyCustomForm(),
            ],
          ),
        ),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          //Nombre Completo
          campoFormulario('Nombre', 'Ingrese su nombre'),

          SizedBox(height: 10),
          //Nit
          campoFormulario('NIT', 'ingrese un nit correcto'),

          SizedBox(height: 10),
          //Nombre Empresa
          campoFormulario(
              'Nombre empresa', 'Por favor llene el campo nombre empresa'),

          SizedBox(height: 10),

          //Telefono
          campoFormulario('Telefono', 'ingrese un telefono'),

          SizedBox(height: 10),

          //Correo
          campoFormulario('Correo', 'ingrese un coreo correcto'),

          SizedBox(height: 10),

          //Contraseña
          campoFormulario('Contraseña', 'contraseña invalida'),

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
    );
  }
}

Widget campoFormulario(String hintText, String validatorTexts) {
  return Padding(
    padding: const EdgeInsets.only(left: 45, right: 45),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        border: Border.all(color: Color(0xFF6F0C41), width: 2),
        // border: Border(bottom: BorderSide.none),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: new EdgeInsets.only(bottom: 5.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextFormField(
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),

          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return validatorTexts;
            }
            return null;
          },
        ),
      ),
    ),
  );
}
