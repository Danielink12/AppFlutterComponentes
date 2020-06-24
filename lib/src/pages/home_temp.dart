import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['unos','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(var opt in opciones){

      final tempWidget = ListTile(
          title: Text(opt),
      );

      lista.add(tempWidget);
      lista.add(Divider());

    }

    return lista;
  }

  List<Widget> crearItems(){

    var widgets = opciones.map((item){
      return Column(
        children: [
          ListTile(
            title: Text(item+"!"),
            subtitle: Text("cualquier cosa"),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.access_alarm),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList(); 

    return widgets;

  }

}