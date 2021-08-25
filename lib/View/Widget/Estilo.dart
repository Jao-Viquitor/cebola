import 'package:flutter/material.dart';

class Estilo {
  estiloBotao(String str) {
    return Text(str, style: TextStyle(color: Colors.white, fontSize: 16.0));
  }

  estiloBotaoCancelar() {
    return Text("Cancelar",
        style: TextStyle(color: Colors.redAccent, fontSize: 16.0));
  }
}
