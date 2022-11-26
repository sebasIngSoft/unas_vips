import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unas_vip/domain/cita/model/cita.dart';
import 'package:unas_vip/domain/user/model/user.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class BuscarNegocio extends StatelessWidget {
  BuscarNegocio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DataDB dataDB = Get.find();
    var negocio = '';
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
                //Nombre
                SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Text('Buscar\nNegocio',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 50),
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
                          icon: Icon(Icons.search, color: Colors.white),
                          hintText: 'Escriba un nombre....',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

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
                                  children: dataDB.listManicuristas.value
                                      .map(
                                        (element) => ElevatedButton(
                                          onPressed: () {
                                            negocio =
                                                element.empresa.toString();
                                          },
                                          child: Text(
                                            element.empresa.toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.white.withOpacity(0.3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 100),
                                          ),
                                        ),
                                      )
                                      .toList(),
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
                        dataDB.listCitas.value.add(Cita(empresa: negocio));
                        Get.to(SelectServicio());
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
      ),
    );
  }
}
