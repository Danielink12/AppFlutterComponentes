import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista(),
      ),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuprovider.cargarData(),
      //initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        //print("builder");
        //print(snapshot.data);
       
        return ListView(
          children: _listaItems(snapshot.data, context),
          );
      },
    );

  }


  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones= [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue,),
        onTap: (){
          final route = MaterialPageRoute(builder: (context ){
            return AlertPage();
          });
          Navigator.push(context, route);
        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
  }

  /*Widget _lista() {

    print(menuprovider.opciones);

    return ListView(
      children: _listaItems(),
    );
  }*/

  /*List<Widget> _listaItems(List<dynamic> data) {
    return[
      ListTile(title: Text("Hola mundo"),onTap: (){},),
      Divider(),
      ListTile(title: Text("Hola mundo")),
      Divider(),
      ListTile(title: Text("Hola mundo")),
    ];
  }*/
}