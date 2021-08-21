import 'package:cebola/Model/Organista.dart';

class Examinadora extends Organista{

  List<String> _cidades;

  Examinadora(Function() contador, String nome, String comum, String batismo, String nivel, this._cidades) : super(contador, nome, comum, batismo, nivel);

  List<String> get cidades => _cidades;

  set cidades(List<String> value) {
    _cidades = value;
  }
}