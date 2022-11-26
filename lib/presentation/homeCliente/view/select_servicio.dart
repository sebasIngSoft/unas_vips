import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unas_vip/domain/cita/model/cita.dart';
import 'package:unas_vip/infrastructure/data/data.dart';
import 'package:unas_vip/presentation/homeCliente/view/home_cliente.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

class SelectServicio extends StatefulWidget {
  SelectServicio({Key? key}) : super(key: key);

  @override
  State<SelectServicio> createState() => _SelectServicioState();
}

class _SelectServicioState extends State<SelectServicio> {
  @override
  Widget build(BuildContext context) {
    final DataDB dataDB = Get.find();
    final ListServisLocal = [];

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
                          [
                            Container(
                              margin: EdgeInsets.only(bottom: 50),
                              child: Column(
                                  children: dataDB.listServicios
                                      .map(
                                        (element) => ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.white.withOpacity(0.3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 100),
                                          ),
                                          onPressed: () =>
                                              ListServisLocal.add(element),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                element,
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
                                      .toList()),
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
                      dataDB.listCitas.value = [
                        Cita(
                            empresa: dataDB.listCitas.value[0].empresa,
                            servicio: ListServisLocal)
                      ];
                      Get.to(horarioDisponible());
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
