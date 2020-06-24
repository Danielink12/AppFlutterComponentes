import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{

  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {

    final resp = await rootBundle.loadString("data/menu_opts.json");

      Map dataMap = json.decode(resp);
      //print(dataMap["rutas"]);
      opciones = dataMap["rutas"];

      return opciones;
  }

 /* void cargarData() {

    rootBundle.loadString("data/menu_opts.json").then((data){

      Map dataMap = json.decode(data);
      print(dataMap["rutas"]);

      opciones = dataMap["rutas"];

    });

  } */

  /*void cargarData() {

    rootBundle.loadString("data/menu_opts.json").then((data){
      print(data);
    });

  } */

}

final menuprovider = new _MenuProvider();