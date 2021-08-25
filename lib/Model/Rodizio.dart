import 'package:flutter/material.dart';

class Rodizio {

  final String id;
  final String _categoria;
  final String _nome;
  final String _local;
  final String _data;

  const Rodizio(
      this.id,
      this._categoria,
      this._nome,
      this._local,
      this._data);

  String get data => _data;

  String get local => _local;

  String get nome => _nome;

  String get categoria => _categoria;

}
