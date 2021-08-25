import 'package:flutter/material.dart';

class CamposDeTexto {

  Widget MyTextFieldNumber(TextEditingController controller, String str, Icon icone) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: str,
        prefixIcon: icone,
      ),
    );
  }

  Widget MyTextFieldSenha(TextEditingController controller) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Senha",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }

  Widget MyTextFieldText(
      TextEditingController controller, String str, Icon icone) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: str,
        prefixIcon: icone,
      ),
    );
  }

  Widget MyTextFieldData(
      TextEditingController controller, String str, Icon icone) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: str,
        prefixIcon: icone,
      ),
    );
  }

}
