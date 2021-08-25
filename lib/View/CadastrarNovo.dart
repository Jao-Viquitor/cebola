import 'package:cebola/Model/Rodizio.dart';
import 'package:cebola/View/TelaInicial.dart';
import 'package:cebola/View/Widget/Estilo.dart';
import 'package:cebola/provider/RodiziosProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Widget/CamposDeTexto.dart';

class CadastrarNovo extends StatefulWidget {
  String name;

  CadastrarNovo(this.name);

  @override
  _CadastrarNovo createState() => _CadastrarNovo();
}

class _CadastrarNovo extends State<CadastrarNovo> {

  final _form = GlobalKey<FormState>();
  final Map<String, String> _FormData = {};

  TextEditingController _categoria = TextEditingController();
  TextEditingController _nome = TextEditingController();
  TextEditingController _local = TextEditingController();
  TextEditingController _data = TextEditingController();

  var textos = CamposDeTexto();
  var estilo = Estilo();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Criar novo Rodízio"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://wallpapercave.com/wp/wp5129072.jpg"),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Form(
            key: _form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textos.MyTextFieldText(
                    _categoria, "Qual a categoria?", new Icon(Icons.add)),
                textos.MyTextFieldText(
                    _nome, "Qual o nome?", new Icon(Icons.person)),
                textos.MyTextFieldText(
                    _local, "Onde será?", new Icon(Icons.add_location)),
                textos.MyTextFieldData(
                    _data, "Quando será?", new Icon(Icons.access_time)),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              final isValid = _form.currentState!.validate();

                              if(isValid) {
                                _FormData['nome'] = _nome.text;
                                _FormData['categoria'] = _categoria.text;
                                _FormData['local'] = _local.text;
                                _FormData['data'] = _data.text;
                                Provider.of<RodoziosProvider>(context).put(Rodizio(_FormData['id'].toString(),
                                    _FormData['categoria'].toString(),
                                    _FormData['nome'].toString(),
                                    _FormData['local'].toString(),
                                    _FormData['data'].toString()));
                                Navigator.of(context).pop();
                              }
                            },
                            child: estilo.estiloBotao("Confirmar")),
                        TextButton(
                            onPressed: () {
                              String name = widget.name;

                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TelaInicial(name)));
                            },
                            child: estilo.estiloBotaoCancelar()),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
