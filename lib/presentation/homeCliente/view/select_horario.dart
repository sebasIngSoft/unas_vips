import 'package:flutter/material.dart';

class horarioDisponible extends StatefulWidget {
  horarioDisponible({Key? key}) : super(key: key);

  @override
  State<horarioDisponible> createState() => _horarioDisponibleState();
}

class _horarioDisponibleState extends State<horarioDisponible> {
  @override
  Widget build(BuildContext context) {
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
              //name

              SizedBox(height: 50),

              Container(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(' Horario\nDisponible',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),

              //botton horario
              SizedBox(height: 50),
              Container(
                child: MaterialButton(
                  onPressed: _showDataPicker,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('horario disponible',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  color: Color.fromARGB(102, 251, 34, 143),
                ),
              ),

              //lista
              SizedBox(height: 50),

              //lista
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          <Widget>[
                            Container(
                              // margin: EdgeInsets.only(bottom: 50),
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 20,
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 105, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 50),
                                          ),
                                          // Text(
                                          //   "Manicure ",
                                          //   style: TextStyle(
                                          //     color: Colors.black,
                                          //     fontSize: 20,
                                          //   ),
                                          // ),
                                          // Icon(
                                          //   Icons.add,
                                          //   size: 30,
                                          //   color: Color.fromARGB(
                                          //       102, 251, 34, 143),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  // SizedBox(height: 20),
                                  Material(
                                    elevation: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 50),
                                          ),
                                          // Text(
                                          //   "Pedicure ",
                                          //   style: TextStyle(
                                          //     color: Colors.black,
                                          //     fontSize: 20,
                                          //   ),
                                          // ),
                                          // Icon(
                                          //   Icons.add,
                                          //   size: 30,
                                          //   color: Color.fromARGB(
                                          //       102, 251, 34, 143),
                                          // )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              //button
              Container(
                child: SizedBox(
                  //padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => horarioDisponible()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                        padding: EdgeInsets.only(left: 50, right: 50)),
                    child: const Text(
                      'Agendar Cita',
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

  void _showDataPicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
  }
}
