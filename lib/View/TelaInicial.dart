import 'package:cebola/Model/DUMMY_USERS.dart';
import 'package:cebola/Model/Rodizio.dart';
import 'package:cebola/Routes/Routes.dart';
import 'package:cebola/View/Widget/RodizioModelos.dart';
import 'package:cebola/provider/RodiziosProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CadastrarNovo.dart';

class TelaInicial extends StatefulWidget {
  String nome;

  TelaInicial(this.nome);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {



  @override
  Widget build(BuildContext context) {

    final RodoziosProvider rodizios = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Bem Vindo, ${widget.nome}!"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://wallpapercave.com/wp/wp5129072.jpg"),
          fit: BoxFit.cover,
        )),
        child: ListView.builder(
            itemCount: rodizios.count,
            itemBuilder: (contexto, i) => RodizioModelos(rodizios.byIndex(i))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.CRIAR_RODIZIO,
          arguments: rodizios);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
