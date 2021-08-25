import 'package:cebola/Model/Rodizio.dart';
import 'package:cebola/Routes/Routes.dart';
import 'package:flutter/material.dart';

import 'CamposDeTexto.dart';
import 'Estilo.dart';

class RodizioModelos extends StatelessWidget {

  late final Rodizio rodizios;

  RodizioModelos(this.rodizios);

  var textos = CamposDeTexto();
  var estilo = Estilo();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://wallpapercave.com/wp/wp5129072.jpg"),
              fit: BoxFit.cover,
            )),
          child: ListTile(
            title: Text(rodizios.nome),
            subtitle: Text(rodizios.data),
            trailing: Row(
              children: [
                IconButton(onPressed: () => {
                Navigator.of(context).pushNamed(Routes.CRIAR_RODIZIO, arguments: rodizios),
                }, icon: Icon(Icons.edit),
                    color: Colors.orangeAccent,),
                IconButton(onPressed: () => {
                Navigator.of(context).pushNamed(Routes.CRIAR_RODIZIO),
                },
                    icon: Icon(Icons.delete),
                    color: Colors.redAccent,)
              ],
            ),
          )
      ),
    );
  }

}