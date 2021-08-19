import 'package:flutter/material.dart';

abstract class Organista{

  int _cod = 0;
  String _nome;
  String _comum;
  String _batismo;
  String _nivel;

  Organista(contador(), this._nome, this._comum, this._batismo, this._nivel);

  String get nivel => _nivel;

  set nivel(String value) {
    if(value == "" || value.isEmpty){
      print("Valor inválido");
    } else {
      _nivel = value;
    }
  }

  String get batismo => _batismo;

  set batismo(String value) {
    if(value == "" || value.isEmpty){
      print("Valor inválido");
    } else {
      _batismo = value;
    }
  }

  String get comum => _comum;

  set comum(String value) {
    if(value == "" || value.isEmpty){
      print("Valor inválido");
    } else {
      _comum = value;
    }
  }

  String get nome => _nome;

  set nome(String value) {
    if(value == "" || value.isEmpty){
      print("Valor inválido");
    } else {
      _nome = value;
    }
  }

  int get cod => _cod;

  contador(){
   _cod = _cod++;
  }

}