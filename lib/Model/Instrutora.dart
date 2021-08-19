import 'package:cebola/Model/Organista.dart';

class Instrutora extends Organista{

  int _telefone;

  Instrutora(Function() contador, String nome, String comum, String batismo, String nivel, this._telefone) : super(contador, nome, comum, batismo, nivel);

  int get telefone => _telefone;

  set telefone(int value) {
    _telefone = value;
  }

  @override
  set batismo(String value) {
    value = "Sim";
    batismo = value;
  }

  @override
  set nivel(String value) {
   value = "Oficilializada";
   nivel = value;
  }
}