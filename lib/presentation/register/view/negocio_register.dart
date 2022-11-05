import 'package:flutter/material.dart';

class NegocioRegister extends StatelessWidget {
  const NegocioRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),

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

            //textArea Nombre
            MyCustomForm(),

            //textArea NIT

            //textArea Nombre Empresa

            //textArea Telefono

            //textArea Correo

            //textArea Contrasena
          ],
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
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
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
          campoFormulario('NIT', 'ingrese un nit correcto'),

          //Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
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
