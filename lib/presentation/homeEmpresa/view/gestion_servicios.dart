import 'package:flutter/material.dart';

class GestionServicio extends StatefulWidget {
  GestionServicio({Key? key}) : super(key: key);

  @override
  State<GestionServicio> createState() => _GestionServicioState();
}

class _GestionServicioState extends State<GestionServicio> {
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
              //nombre
              SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text('Servicio',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 50),

              //lista
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                height: 300,
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
                              margin: EdgeInsets.only(bottom: 50),
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 20,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 80),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Manicure ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add,
                                            color: Color.fromARGB(
                                                102, 252, 82, 167),
                                            size: 30,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  // SizedBox(height: 20),
                                  Material(
                                    elevation: 20,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 80),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Pedicure ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add,
                                            color: Color.fromARGB(
                                                102, 252, 82, 167),
                                            size: 30,
                                          )
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => horarioDisponible()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(102, 0, 51, 0.4),
                        padding: EdgeInsets.only(left: 50, right: 50)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
