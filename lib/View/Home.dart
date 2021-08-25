import 'package:cebola/View/Widget/CamposDeTexto.dart';
import 'package:flutter/material.dart';
import 'TelaInicial.dart';
import 'Widget/Estilo.dart';

class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  var camposDeTextos = CamposDeTexto();
  var estilo = Estilo();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://wallpapercave.com/wp/wp5129072.jpg"),
              fit: BoxFit.cover,
            )),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                camposDeTextos.MyTextFieldText(_nomeController, "Digite seu Nome", new Icon(Icons.person)),
                camposDeTextos.MyTextFieldSenha(_senhaController),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: (){
                        String nome = _nomeController.text;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TelaInicial(nome))
                        );
                      }, child: estilo.estiloBotao("Entrar")),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}












