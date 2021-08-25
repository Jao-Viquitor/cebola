import 'package:cebola/Routes/Routes.dart';
import 'package:cebola/View/CadastrarNovo.dart';
import 'package:cebola/View/TelaInicial.dart';
import 'package:cebola/View/Widget/RodizioModelos.dart';
import 'package:cebola/provider/RodiziosProvider.dart';

import 'View/Home.dart';
import 'package:cebola/View/Widget/CamposDeTexto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/Rodizio.dart';
import 'View/Widget/Estilo.dart';

void main() {
  runApp(Aplicativo());
}

class Aplicativo extends StatefulWidget {

  @override
  _AplicativoState createState() => _AplicativoState();

}

class _AplicativoState extends State<Aplicativo> {


  TextEditingController _nomeController = TextEditingController();
  var camposDeTextos = CamposDeTexto();
  var estilo = Estilo();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => RodoziosProvider(),
      child: MaterialApp(
        title: '',
        routes: {
          Routes.HOME: (_) => Home(),
          Routes.TELA_INICIAL: (_) => TelaInicial(_nomeController.text),
          Routes.CRIAR_RODIZIO: (_) => CadastrarNovo(_nomeController.text),
        },
      ),
    );
  }
}

